package hcmute.controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.EnrrolTest;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;
import hcmute.entity.User;
import hcmute.services.ITopicTestService;
import hcmute.services.IUserService;
import hcmute.services.TopicTestServiceImpl;
import hcmute.services.UserServiceImpl;

/**
 * Servlet implementation class LuyenDeHomeController
 */
@WebServlet(urlPatterns = { "/user/luyen-de-home" })
public class LuyenDeHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ITopicTestService topicTestService = new TopicTestServiceImpl();
	IUserService userService = new UserServiceImpl();
	public LuyenDeHomeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");;
		
		
		request.setAttribute("currentUser", user);
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
	private User findUserByID(String currentUserID) {
		User user = userService.findUserByID(currentUserID);
		return user;
	}

}
