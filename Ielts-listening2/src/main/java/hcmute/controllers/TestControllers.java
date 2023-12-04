package hcmute.controllers;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import antlr.StringUtils;
import hcmute.DAO.AnswerTestDao;
import hcmute.entity.AnswerTest;
import hcmute.entity.AnswerUser;
import hcmute.entity.EnrrolTest;
import hcmute.entity.ListeningPart;
import hcmute.services.AnswerTestServiceImpl;
import hcmute.services.AnswerUserService;
import hcmute.services.EnrollTestService;
import hcmute.services.IListeningPartService;
import hcmute.services.ListeningPartServiceImpl;
import hcmute.utils.HttpUtil;
@WebServlet(urlPatterns = { "/test/luyende_test","/test/complete_test","/api-comfirm-answers" ,"/api-luyende_test"})
public class TestControllers extends HttpServlet{
	
	private IListeningPartService listeningPartService = new ListeningPartServiceImpl();
	private EnrollTestService enrollTestService = new EnrollTestService();
	private AnswerUserService answerUserService = new AnswerUserService();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String url = req.getRequestURI().toString();
		if (url.contains("test/luyende_test")) {
			getLuyenDeTest(req, resp);
		} else if(url.contains("test/complete_test")) {
			getCompleteTest(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		String url = req.getRequestURI().toString();
		if(url.contains("api-luyende_test")) {
			postSaveAnswers(req, resp);
		} else if(url.contains("api-comfirm-answers")) {
			postApiLayDanhSachCauHoi(req, resp);
		}
	}
	
	protected void getLuyenDeTest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String enrollTestId = req.getParameter("enrollTestId");
		//Chức năng còn thiếu: Xác thực tài khoản đăng nhập vào enrollTest có phải là của người dùng test không
		//Chức năng này cần có getSession.getAttribute mới thực hiện
		//Khi nối code sẽ hoàn thiện chức năng
		
		if (enrollTestId == null) {
			resp.setContentType("text/html");
			String errorMsg = "<p>Không có bài kiểm tra</p>";
			resp.getWriter().print(errorMsg);
			return;
		}
		
		EnrrolTest enrollTest = enrollTestService.findById(enrollTestId);
		
		String currentPartId;
		if(req.getParameter("currentPartId") == null) {
			currentPartId = enrollTest.getMockTests().getListeningParts().get(0).getPartId();
		} else {
			currentPartId = req.getParameter("currentPartId");
		}
		
		
		//set thời gian
		Date currentDate = new Date(System.currentTimeMillis());
		int timeTest = 40*60; //thời gian làm test mặc định 40p
		
		Date enrollmentDate = enrollTest.getEnrrollmentDate();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(enrollmentDate);
		calendar.add(Calendar.SECOND, timeTest);
		Date endingEnrollmentDate = calendar.getTime();
		
		if(currentDate.after(endingEnrollmentDate) || enrollTest.getScore() != null) {
			//đăng nhập sau khi test đã hoàn thành
			if(enrollTest.getScore() == null) {
				enrollTestService.completeTest(enrollTest.getEnrrolId());
			}
			req.setAttribute("currentTime", 0);
			req.setAttribute("endingTime", 0);
			req.setAttribute("isCompleted", "True");
			long numberOfCorrectAnswers = enrollTestService.calcNumberOfCorrectAnswers(enrollTestId);
			long numberOfQuestTion = enrollTestService.calcNumberOfQuestTion(enrollTestId);
			req.setAttribute("numberOfCorrectAnswers", numberOfCorrectAnswers);
			req.setAttribute("numberOfQuestTion", numberOfQuestTion);
		}else if(currentDate.after(enrollmentDate) && currentDate.before(endingEnrollmentDate)) { 
			//thời gian làm test nằm trong thời gian hiệu lực
			req.setAttribute("currentTime", (currentDate.getTime() - enrollmentDate.getTime())/1000);
			req.setAttribute("endingTime", timeTest);
		} else if(currentDate.before(enrollmentDate)) {
			//đăng nhập sớm hơn thời gian làm bài
			//req.setAttribute("errorMessage", "Chưa đến giờ làm bài, hãy quay lại vào lúc: " + endingEnrollmentDate);
			resp.setContentType("text/html");
			resp.getWriter().println("<p>"+"Chưa đến giờ làm bài, hãy quay lại vào lúc: " + enrollmentDate +"</p>");
			//Tạm thời xuất thông báo, sau này sẽ chuyển hướng quay ngược lại trang test_home và set 1 đoạn tin nhắn đỏ 
			//Thông báo rằng chưa đến giờ làm test
			return;
		} 
		
		//set next part
		ListeningPart currentPart = listeningPartService.findById(currentPartId);
		
		List<ListeningPart> parts = enrollTest.getMockTests().getListeningParts();
		String prevPart = null;
		String nextPart = null;
		int currentPartNumber = 0;
		for(ListeningPart part: parts) {
			if(part.getPartId().equals(currentPartId)) {
				int index = parts.indexOf(part);
				if(index != (parts.size() - 1)) {
					nextPart = parts.get(index + 1).getPartId();
				}
				if(index != 0) {
					prevPart = parts.get(index - 1).getPartId();
				}
				currentPartNumber = index + 1;
				break;
			}
		}
		req.setAttribute("prevPart", prevPart);
		req.setAttribute("nextPart", nextPart);
		req.setAttribute("currentPartNumber", currentPartNumber);
		req.setAttribute("enrollTest", enrollTest);
		req.setAttribute("currentPart", currentPart);
		req.getRequestDispatcher("/views/luyende/luyende_test.jsp").forward(req, resp);
	}
	
	protected void getCompleteTest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String enrollTestId = req.getParameter("enrollTestId");
		EnrrolTest enrollTest = enrollTestService.findById(enrollTestId);
		if(enrollTest != null && enrollTest.getScore() == null) {
			enrollTestService.completeTest(enrollTestId);
		}
		String childUrl = "/test/luyende_test?enrollTestId=" +enrollTestId;
		resp.sendRedirect(req.getContextPath() + childUrl);
	}
	
	protected void postSaveAnswers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpUtil httpUtil = HttpUtil.of(req.getReader());
		AnswerUser answerUser= httpUtil.toModel(AnswerUser.class);
		EnrrolTest enrollTest = enrollTestService.findById(answerUser.getAnswerUserId().getEnrrolId());
		if(enrollTest != null && enrollTest.getScore() == null) {
			answerUserService.SaveOrUpdate(answerUser);
			ObjectMapper mapper = new ObjectMapper();
			mapper.writeValue(resp.getOutputStream(), answerUser);
		}
	}
	
	protected void postApiLayDanhSachCauHoi(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpUtil httpUtil = HttpUtil.of(req.getReader());
		EnrrolTest enrrolTest = httpUtil.toModel(EnrrolTest.class);
		EnrrolTest enrrolTest2 = enrollTestService.findById(enrrolTest.getEnrrolId());
		String json = "[";
		try {
			if(enrrolTest2 != null) {
				int sttCauHoi = 1;
				for(ListeningPart part: enrrolTest2.getMockTests().getListeningParts()) {
					for(AnswerTest answerTest: part.getAnswerTests()) {
						json += "{ \"CauHoiSo\" : %d,".formatted(sttCauHoi);
						boolean isAnwser = false;
						if(enrrolTest2.getAnswerUsers() != null) {
							for(AnswerUser answerUser: enrrolTest2.getAnswerUsers()) {
								if(answerTest.getAnswerId().equals(answerUser.getAnswerTest().getAnswerId()) 
										&& answerUser.getAnswer() != null && !answerUser.getAnswer().isEmpty()) {
									isAnwser = true;
								}
							}
						}
						json += "\"DaTraLoi\" :%b}".formatted(isAnwser);
						sttCauHoi++;
					}
				}
				json = json.replace("}{", "},{");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		json += "]";
		resp.getWriter().write(json);
	}
	private static final long serialVersionUID = 1L;
	
}
