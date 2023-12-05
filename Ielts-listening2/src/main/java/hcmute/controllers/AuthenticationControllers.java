package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
import hcmute.entity.Cart;
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.CartServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.services.ICartService;
import hcmute.utils.compositeId.PasswordEncryptor;

@WebServlet(urlPatterns = { "/authentication-login", "/authentication-signup", "/user/logout", "/admin/logout",
		"/waiting" })
public class AuthenticationControllers extends HttpServlet {

	IAccountServices accountService = new AccountServiceImpl();
	ICartService cartService = new CartServiceImpl();

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
				List<Cart> carts = (List<Cart>) session.getAttribute("cart");
				if (role.equals("admin")) {
					req.setAttribute("user", user);
					resp.sendRedirect(req.getContextPath() + "/admin/dashboard");
				} else {
					req.setAttribute("cart", carts);
					req.setAttribute("user", user);
					resp.sendRedirect(req.getContextPath() + "/user/home");
				}

			} else
				resp.sendRedirect(req.getContextPath() + "authentication/login");
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
			session.removeAttribute("cart");
			resp.sendRedirect(req.getContextPath() + "/user/home");

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
				List<Cart> carts = cartService.findByUserId(user.getUserId());
				HttpSession session = req.getSession(true);
				session.setAttribute("user", user);
				session.setAttribute("role", acc.getRole());
				session.setAttribute("cart", carts);
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

	private static final long serialVersionUID = 1L;
}
