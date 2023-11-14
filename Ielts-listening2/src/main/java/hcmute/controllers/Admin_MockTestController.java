package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.MockTest;
import hcmute.services.IMockTestService;
import hcmute.services.MockTestServiceImpl;

@MultipartConfig
@WebServlet(urlPatterns = {"/admin/listPart" })
public class Admin_MockTestController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	IMockTestService testService = new MockTestServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		if (url.contains("listPart")) {
			//req.setAttribute("topicList", topicList);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/admin_listening-part.jsp");
			rd.forward(req, resp);
		}
	}
}
