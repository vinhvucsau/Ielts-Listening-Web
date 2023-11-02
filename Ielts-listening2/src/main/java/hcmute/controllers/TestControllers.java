package hcmute.controllers;

import java.io.IOException;
import java.util.List;

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
import hcmute.entity.EnrrolTest;
import hcmute.entity.ListeningPart;
import hcmute.services.EnrollTestServiceImpl;
import hcmute.services.IEnrollTestService;
import hcmute.services.IListeningPartService;
import hcmute.services.ListeningPartServiceImpl;
import hcmute.utils.HttpUtil;
@WebServlet(urlPatterns = { "/test/luyende_test","/api-luyende_test"})
public class TestControllers extends HttpServlet{
	
	private IListeningPartService listeningPartService = new ListeningPartServiceImpl();
	private IEnrollTestService enrollTestService = new EnrollTestServiceImpl();
	
	//xóa sau
	private AnswerTestDao answerTestDao = new AnswerTestDao();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("test/luyende_test")) {
			String enrollTestId = "EnTest1037";
			String  currentPartId = "PartId1056"; //sau này lấy ra part hiện tại
			
			EnrrolTest enrollTest = enrollTestService.findById(enrollTestId);
			req.setAttribute("enrollTest", enrollTest);
			req.setAttribute("currentPartId", currentPartId);
			
			
			/*
			 * AnswerTest answerTest = answerTestDao.findById("AnsTest1060"); EnrrolTest
			 * enrrolTest = enrollTestService.findById("EnTest1037");
			 * System.out.println(enrrolTest.getAnswerUsers().stream().anyMatch(a ->
			 * a.getAnswerTest().getAnswerId().equals(answerTest.getAnswerId())));
			 */
			
			req.getRequestDispatcher("/views/luyende/luyende_test.jsp").forward(req, resp);
		}
		else if (url.contains("api-luyende_test")) {
			String testId = "Test1013"; //sau này sẽ dùng req.getParam để lấy testId 
			HttpUtil httpUtil = HttpUtil.of(req.getReader());
			List<ListeningPart> listPart = listeningPartService.findByMockTestId(testId);
			if(listPart != null) {
				ObjectMapper mapper = new ObjectMapper();
				mapper.writeValue(resp.getOutputStream(), listPart);
			}
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String url = req.getRequestURI().toString();
		if(url.contains("api-luyende_test")) {
			HttpUtil httpUtil = HttpUtil.of(req.getReader());
			List<EnrrolTest> list = httpUtil.toList(EnrrolTest.class);
			for(EnrrolTest p: list) {
				System.out.println(p);
			}
		}
	}
	private static final long serialVersionUID = 1L;

}
