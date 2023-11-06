package hcmute.controllers;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Calendar;
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
import hcmute.services.AnswerTestService;
import hcmute.services.AnswerUserService;
import hcmute.services.EnrollTestService;
import hcmute.services.IListeningPartService;
import hcmute.services.ListeningPartServiceImpl;
import hcmute.utils.HttpUtil;
@WebServlet(urlPatterns = { "/test/luyende_test", "/test/luyende_change_part" ,"/api-luyende_test"})
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
			String enrollTestId = req.getParameter("enrollTestId");
			
			//Đưa đến trang báo lỗi enroll test không tồn tại
			if (enrollTestId == null) {
				enrollTestId = "EnTest1037"; 
				// trước hết chưa liên kết thì sẽ lấy đại 1 test để kiểm tra
				//return;//dùng cho sau này
			}
			
			EnrrolTest enrollTest = enrollTestService.findById(enrollTestId);
			String currentPartId;
			
			String nextPartId = req.getParameter("nextPartId");
			String prevPartId = req.getParameter("prevPartId");
			
			//Không có trường hợp cả 2 prev và next đều có giá trị do thẻ a chỉ có 3 trường hợp này
			if(prevPartId == null && nextPartId == null) {
				//nếu không có nextPartId và prevPart thì chính là lần vào đầu tiên
				//lúc này set currentPart bằng part đầu tiên
				currentPartId = enrollTest.getMockTests().getListeningParts().get(0).getPartId();
			}else if(prevPartId == null && nextPartId != null) {
				currentPartId = nextPartId;
			}else {
				System.out.println(prevPartId);
				currentPartId = prevPartId;
			}
			
			req.setAttribute("enrollTest", enrollTest);
			req.setAttribute("currentPartId", currentPartId);
			
			
			//set thời gian
			Date currentDate = new Date(System.currentTimeMillis());
			int timeTest = 40*60*60; //thời gian làm test, thuộc tính còn thiếu của mocktest
			//thảo luận xem dùng thời gian mặc định 40 phút hay thời gian được thiết lập
			Date enrollmentDate = enrollTest.getEnrrollmentDate();
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(enrollmentDate);
			calendar.add(Calendar.SECOND, timeTest);
			Date endingEnrollmentDate = new Date(calendar.getTime().getTime());
			
			if(endingEnrollmentDate.before(currentDate) || enrollTest.getScore() != null) {
				//đăng nhập sau khi test đã hoàn thành
				req.setAttribute("currentTime", 0);
				req.setAttribute("endingTime", 0);
				req.setAttribute("isCompleted", "True");
				long numberOfCorrectAnswers = enrollTestService.calcNumberOfCorrectAnswers(enrollTestId);
				long numberOfQuestTion = enrollTestService.calcNumberOfQuestTion(enrollTestId);
				req.setAttribute("numberOfCorrectAnswers", numberOfCorrectAnswers);
				req.setAttribute("numberOfQuestTion", numberOfQuestTion);
			}else if(enrollmentDate.after(currentDate) && endingEnrollmentDate.before(endingEnrollmentDate)) { 
				//thời gian làm test nằm trong thời gian hiệu lực
				req.setAttribute("currentTime", enrollmentDate.getTime() - currentDate.getTime());
				req.setAttribute("endingTime", timeTest);
			} else if(enrollmentDate.after(currentDate)) {
				//đăng nhập sớm hơn thời gian làm bài
				//Không cho làm
				//req.setAttribute("errorMessage", "Chưa đến giờ làm bài, hãy quay lại vào lúc: " + endingEnrollmentDate);
				resp.setContentType("text/html");
				resp.getWriter().println("<p>"+"Chưa đến giờ làm bài, hãy quay lại vào lúc: " + endingEnrollmentDate+"</p>");
				return;
			} 
			
			//set next part
			ListeningPart currentPart = listeningPartService.findById(currentPartId);
			req.setAttribute("currentPartNumber", currentPart.getNumber());
			
			List<ListeningPart> parts = enrollTest.getMockTests().getListeningParts();
			String nextPart = parts.stream()
	                .filter(part -> part.getPartId().equals(currentPartId))
	                .map(part -> {
	                    int index = parts.indexOf(part);
	                    return (index != parts.size() - 1) ? parts.get(index + 1).getPartId() : null;
	                })
	                .filter(Objects::nonNull)
	                .findFirst()
	                .orElse(null);
			if (nextPart != null) {
				req.setAttribute("nextPart", nextPart);
			}
			//set prev part
			String prevPart = parts.stream()
					.filter(part -> part.getPartId().equals(currentPartId))
	                .map(part -> {
	                    int index = parts.indexOf(part);
	                    return (index != 0) ? parts.get(index - 1).getPartId() : null;
	                })
	                .filter(Objects::nonNull)
	                .findFirst()
	                .orElse(null);
			if (prevPart != null) {
				req.setAttribute("prevPart", prevPart);
			}
			
			//Có một chút thay đổi tại đây
			req.setAttribute("currentPart", listeningPartService.findById(currentPartId));
			req.getRequestDispatcher("/views/luyende/luyende_test.jsp").forward(req, resp);
		} 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		String url = req.getRequestURI().toString();
		if(url.contains("api-luyende_test")) {
			HttpUtil httpUtil = HttpUtil.of(req.getReader());
			AnswerUser answerUser= httpUtil.toModel(AnswerUser.class);
			answerUserService.SaveOrUpdate(answerUser);
			ObjectMapper mapper = new ObjectMapper();
			mapper.writeValue(resp.getOutputStream(), answerUser);
		}
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String url = req.getRequestURI().toString();
		//Xong test và tiến hành lưu bài
		if(url.contains("api-luyende_test")) {
			HttpUtil httpUtil = HttpUtil.of(req.getReader());
			EnrrolTest enrrolTest = httpUtil.toModel(EnrrolTest.class);
			enrollTestService.completeTest(enrrolTest.getEnrrolId());
			ObjectMapper mapper = new ObjectMapper();
			mapper.writeValue(resp.getOutputStream(), "Put thành công");
		}
	}
	private static final long serialVersionUID = 1L;
	
}
