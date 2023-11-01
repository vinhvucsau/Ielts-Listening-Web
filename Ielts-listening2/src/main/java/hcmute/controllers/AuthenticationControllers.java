package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;

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
import hcmute.utils.compositeId.PasswordEncryptor;

@WebServlet(urlPatterns = { "/authentication-login", "/authentication-signup" })
public class AuthenticationControllers extends HttpServlet {

	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
			rd.forward(req, resp);
		} else if (url.contains("signup")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/signUp.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("signup")) {
			SignUp(req, resp);
		}
		if (url.contains("login")) {
			Login(req, resp);
		}
	}

	private void SignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Account account = new Account();
			String userName = req.getParameter("userName");
			String passWord = PasswordEncryptor.encryptPassword(req.getParameter("passWord")) ;
			account.setUserName(userName);
			account.setPassWord(passWord);
			account.setRole("user");
			String res = accountService.SignUp(account);
			System.out.println(res);

			if (res == "Success") {
				resp.sendRedirect(req.getContextPath() + "/authentication-login");
				req.setAttribute("message", "Đã thêm thành công");
			} else {
				req.setAttribute("message", res);
				RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/signUp.jsp");
				rd.forward(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}

	}

	public void Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Account account = new Account();
			String userName = req.getParameter("userName");
			String passWord = PasswordEncryptor.encryptPassword(req.getParameter("passWord")) ;
			account.setUserName(userName);
			account.setPassWord(passWord);
			System.out.println(userName + " " + passWord);
			if (userName != "admin" && passWord != "admin")
				account.setRole("user");
			else
				account.setRole("admin");
			User user = accountService.Login(account);
			if (user == null) {
				req.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng");
				RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
				rd.forward(req, resp);
			} else {
				Cookie currentUser = new Cookie("currentUserID", user.getUserId());
				currentUser.setMaxAge(15 * 24 * 60 * 60); // cookie ton tai trong 15 ngay
				resp.addCookie(currentUser);
				PrintWriter out = resp.getWriter();
				Cookie[] cookies = req.getCookies();
				resp.sendRedirect("/Ielts-listening2/home");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	private static final long serialVersionUID = 1L;

}
