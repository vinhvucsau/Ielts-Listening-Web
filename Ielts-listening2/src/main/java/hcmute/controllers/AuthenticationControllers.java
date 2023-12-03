package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import JPAConfig.JPAConfig;
import hcmute.entity.Account;
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.utils.Email;
import hcmute.utils.compositeId.PasswordEncryptor;

@WebServlet(urlPatterns = { "/authentication-login", "/authentication-signup", "/authentication-forgotpassword",
		"/user/logout", "/admin/logout", "/waiting" })
public class AuthenticationControllers extends HttpServlet {

	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("login")) {
			getLogin(req, resp);
		} else if (url.contains("signup")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/signUp.jsp");
			rd.forward(req, resp);
		} else if (url.contains("waiting")) {
			HttpSession session = req.getSession();
			if (session != null && session.getAttribute("user") != null) {
				User user = (User) session.getAttribute("user");
				String role = (String) session.getAttribute("role");

				if (role.equals("admin")) {
					req.setAttribute("user", user);
					resp.sendRedirect(req.getContextPath() + "/admin/dashboard");
				} else {
					req.setAttribute("user", user);
					resp.sendRedirect(req.getContextPath() + "/user/home");
				}

			} else
				resp.sendRedirect(req.getContextPath() + "authentication/login");
		} else if (url.contains("forgotpassword")) {
			req.getRequestDispatcher("views/authentication/forgotpassword.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("signup")) {
			SignUp(req, resp);
		} else if (url.contains("login")) {
			postLogin(req, resp);
		} else if (url.contains("logout")) {
			HttpSession session = req.getSession();
			session.removeAttribute("user");
			session.removeAttribute("role");
			resp.sendRedirect(req.getContextPath() + "/user/home");

		} else if (url.contains("forgotpassword")) {
			postForgotPassword(req, resp);
		}
	}

	private void SignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Account account = new Account();
			String userName = req.getParameter("userName");
			String passWord = PasswordEncryptor.encryptPassword(req.getParameter("passWord"));
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

	public void postLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Account account = new Account();
			String userName = req.getParameter("userName");
			String passWord = PasswordEncryptor.encryptPassword(req.getParameter("passWord"));
			account.setUserName(userName);
			account.setPassWord(passWord);
			if (userName.isEmpty() || passWord.isEmpty()) {
				req.getRequestDispatcher("views/authentication/login.jsp").forward(req, resp);
				return;
			}

			EntityManager entityManager = JPAConfig.getEntityManager();
			Account acc = entityManager.find(Account.class, userName);

			if (acc.getRole() != "admin")
				account.setRole("user");
			else
				account.setRole("admin");
			User user = accountService.Login(account);
			if (user == null) {
				req.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng");
				RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
				rd.forward(req, resp);
			} else {
				HttpSession session = req.getSession(true);
				session.setAttribute("user", user);
				session.setAttribute("role", acc.getRole());
				resp.sendRedirect(req.getContextPath() + "/waiting");
				return;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	private void getLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath() + "/waiting");
			return;
		}

		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("email")) {
					session = req.getSession(true);
					session.setAttribute("email", cookie.getValue());
					resp.sendRedirect(req.getContextPath() + "/waiting");
					return;
				}
			}
		}
		req.getRequestDispatcher("views/authentication/login.jsp").forward(req, resp);

	}

	private void postForgotPassword(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		String username = req.getParameter("username");
		String email = req.getParameter("email");
		Account account = accountService.findByID(username);

		if (account == null ) {
			req.setAttribute("message", "Username hoặc Email không tồn tại trong hệ thống!");
			req.getRequestDispatcher("views/authentication/forgotpassword.jsp").forward(req, resp);
			return;
		}
		if (!account.getUsers().getEmail().equals(email)) {
			req.setAttribute("message", "Username hoặc Email không tồn tại trong hệ thống!");
			req.getRequestDispatcher("views/authentication/forgotpassword.jsp").forward(req, resp);
			return;
		}

		Email sm = new Email();

		boolean test = sm.sendPasswordEmail(account);

		if (test) {
			req.setAttribute("message", "Vui lòng kiểm tra email để nhận mật khẩu nhé!");
		} else {
			req.setAttribute("message", "Lỗi gửi mail!");
		}
		req.getRequestDispatcher("views/authentication/login.jsp").forward(req, resp);
	}

	private static final long serialVersionUID = 1L;
}
