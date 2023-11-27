package hcmute.controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.Account;
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;

@WebServlet(urlPatterns = { "/user/home", "/logout" })
public class UserController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	IAccountServices accountService = new AccountServiceImpl();
	IUserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String url = req.getRequestURI().toString();

		if (url.contains("home")) {
			String currentUserID = null;
			User user = null;
			Cookie[] cookies = req.getCookies();
			resp.setContentType("text/html");
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("currentUserID"))
						currentUserID = cookie.getValue();
				}
			}
			if (currentUserID != null) {
				user = findUserByID(currentUserID);
				System.out.println(user.getUserId());
			}
			req.setAttribute("currentUser", user);
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/Home.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
		String url = req.getRequestURI().toString();

		if (url.contains("logout")) {
			Cookie[] cookies = req.getCookies();
			resp.setContentType("text/html");
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("currentUserID"))
						cookie.setMaxAge(0);
				}
			}
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/Home.jsp");
			rd.forward(req, resp);

		}
	}

	private User findUserByID(String currentUserID) {
		User user = userService.findUserByID(currentUserID);
		return user;
	}

}
