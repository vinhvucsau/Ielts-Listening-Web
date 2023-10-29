package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.DAO.ITopicTestDAO;
import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;

import hcmute.services.IMockTestService;
import hcmute.services.ITopicTestService;

import hcmute.services.MockTestServiceImpl;
import hcmute.services.TopicTestServiceImpl;

@WebServlet(urlPatterns = {"/admin/taobode"})
public class AdminAddCourseController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	ITopicTestService topicService = new TopicTestServiceImpl();
	IMockTestService mockService = new MockTestServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("taobode")) {
			List<MockTest> listMocktest = mockService.getAllMockTest();
			req.setAttribute("listMocktest", listMocktest);
			
			List<TopicTest> topicList = topicService.getAllTopicTest();
			req.setAttribute("topicList", topicList);
			RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/admin_taobode.jsp");
			rd.forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
