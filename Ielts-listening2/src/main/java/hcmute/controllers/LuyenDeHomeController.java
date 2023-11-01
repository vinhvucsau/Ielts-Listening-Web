package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.TopicTest;
import hcmute.services.ITopicTestService;
import hcmute.services.TopicTestServiceImpl;

/**
 * Servlet implementation class LuyenDeHomeController
 */
@WebServlet(urlPatterns = { "/user/luyen-de-home" })
public class LuyenDeHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ITopicTestService topicTestService = new TopicTestServiceImpl();

	public LuyenDeHomeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page") == null ? "1" : request.getParameter("page"));
		String searchStr = request.getParameter("search") == null ? "" : request.getParameter("search");
		int tab = Integer.parseInt(request.getParameter("tab") == null ? "1" : request.getParameter("tab"));
		int pagesize = 6;
		List<TopicTest> allTopicTestList = topicTestService.findAll(searchStr, tab);
		List<TopicTest> topicTestList = topicTestService.findAll(page - 1, pagesize, searchStr, tab);
		int pageNum =  (int)(allTopicTestList.size() / pagesize) + (allTopicTestList.size() % pagesize == 0 ? 0 : 1);
		request.setAttribute("topicTests", topicTestList);
		request.setAttribute("pagesize", pagesize);
		request.setAttribute("pageNum", pageNum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/luyende/luyende_home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
