package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.ListeningPart;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;
import hcmute.services.IListeningPartService;
import hcmute.services.IMockTestService;
import hcmute.services.ListeningPartServiceImpl;
import hcmute.services.MockTestServiceImpl;

@MultipartConfig
@WebServlet(urlPatterns = {"/admin/listPart", "/admin/listIDpart" })
public class Admin_MockTestController extends HttpServlet {
	/**
	 * 
	 */
	IListeningPartService listen = new ListeningPartServiceImpl();
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");	

		if (url.contains("listPart")) {
			String id = req.getParameter("idTest");
			
			List<ListeningPart> listpart= listen.findByMockTestId(id);
			req.setAttribute("listpart", listpart);
			
			req.setAttribute("TestID", id);
//			List<TopicTest> topicList = topicService.getAllTopicTest();
//			req.setAttribute("topicList", topicList);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/admin_listening-part.jsp");
			rd.forward(req, resp);
		}
	}
}
