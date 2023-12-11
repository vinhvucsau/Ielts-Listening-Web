package hcmute.controllers;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hcmute.entity.EnrrolTest;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;
import hcmute.entity.User;
import hcmute.services.EnrollTestService;
import hcmute.services.EnrollTestServiceImpl;
import hcmute.services.IEnrollTestService;
import hcmute.services.IMockTestService;
import hcmute.services.ITopicTestService;
import hcmute.services.IUserService;
import hcmute.services.MockTestServiceImpl;
import hcmute.services.TopicTestServiceImpl;
import hcmute.services.UserServiceImpl;
import hcmute.services.EnrollTestService;
import hcmute.services.ITopicTestService;
import hcmute.services.IUserService;
import hcmute.services.MockTestServiceImpl;
import hcmute.services.TopicTestServiceImpl;
import hcmute.services.UserServiceImpl;
@WebServlet(urlPatterns = { "/user/luyende-testset" })



public class LuyenDeTestSetController extends HttpServlet{

	IMockTestService mockTestService = new MockTestServiceImpl();
	IEnrollTestService enrollTestService =new EnrollTestServiceImpl();
	ITopicTestService topicTestService = new TopicTestServiceImpl();
	
	IUserService userService = new UserServiceImpl();
	EnrollTestService enService = new EnrollTestService();
	EnrollTestService enrollTestService2 = new EnrollTestService();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String url = req.getRequestURI().toString();
		if (url.contains("testset")) {
			findAll(req, resp);
			
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/luyende_testset.jsp");
			rd.forward(req, resp);
		} 
	}
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			String topicId =  req.getParameter("topicId");
			TopicTest topic = topicTestService.findById(topicId);
			req.setAttribute("topic_test", topic);
			List<MockTest> listMocktest = mockTestService.getMockTestByTopicId(topicId);
			System.out.print(listMocktest);
			req.setAttribute("listMocktest", listMocktest);
			HttpSession session =  req.getSession(false);
			User user = (User) session.getAttribute("user");
			if (user!=null)
			{			
				List<EnrrolTest> listEnrolltest = enrollTestService.getEnrollTestByUserId(user.getUserId(),topicId);
				req.setAttribute("listEnrolltest", listEnrolltest);
				req.setAttribute("currentUser", user);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());

		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);

		// Set cứng ID để test chức năng

		User user = (User) session.getAttribute("user");
		String testId = req.getParameter("testId");
		
		EnrrolTest enrrolTest = new EnrrolTest();
		enrrolTest.setEnrrolId("");
		enrrolTest.setScore(-1.0);
		
		enrrolTest.setUsers(user);
		MockTest mockTest = mockTestService.findById(testId);
		enrrolTest.setMockTests(mockTest);
		
		if(enrollTestService2.findByUserIdAndMockTestIdSoon(user.getUserId(), testId) != null )
		{
			EnrrolTest checkEnTest = enrollTestService2.findByUserIdAndMockTestIdSoon(user.getUserId(), testId);
			if (checkEnTest.getScore() <0 )
			{
				
				resp.sendRedirect(req.getContextPath() + "/test/luyende_test?enrollTestId=" + checkEnTest.getEnrrolId());
			}
		}
		else
		{
			LocalDateTime date = LocalDateTime.now();
			enrrolTest.setEnrrollmentDate(date.truncatedTo(ChronoUnit.SECONDS).plusSeconds(1));
			enrollTestService.insert(enrrolTest);
			
			
			EnrrolTest enrrolTestGet = enrollTestService2.findByUserIdAndMockTestIdAndDate(user.getUserId(), testId,
					date.truncatedTo(ChronoUnit.SECONDS).plusSeconds(1));
			
			resp.sendRedirect(req.getContextPath() + "/test/luyende_test?enrollTestId=" + enrrolTestGet.getEnrrolId());
		}
		
		
		
	}
	
}
