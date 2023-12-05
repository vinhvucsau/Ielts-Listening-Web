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
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;
import hcmute.utils.Email;
import hcmute.utils.compositeId.PasswordEncryptor;

@WebServlet(urlPatterns = { "/authentication-login", "/authentication-signup", "/authentication-forgotpassword",
		"/authentication-verifycode", "/user/logout", "/admin/logout", "/waiting" })
public class AuthenticationControllers extends HttpServlet {

	IAccountServices accountService = new AccountServiceImpl();
	IUserService userService = new UserServiceImpl();
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
			session.removeAttribute("cart");
			resp.sendRedirect(req.getContextPath() + "/user/home");

		} else if (url.contains("forgotpassword")) {
			postForgotPassword(req, resp);
		} else if (url.contains("verifycode")) {
			postVerifyCode(req, resp);
		}
	}

	private void SignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Email sm = new Email();

			// get the 6-digit code
			String code = sm.getRandom();
			Account account = new Account();

			String email = req.getParameter("email");
			String userName = req.getParameter("userName");
			String passWord = PasswordEncryptor.encryptPassword(req.getParameter("passWord"));
			account.setUserName(userName);
			account.setPassWord(passWord);
			account.setRole("user");
			account.setCode(code);

			String res = accountService.SignUp(account);
			User user = accountService.findByID(userName).getUsers();
			user.setEmail(email);
			userService.update(user);
			account = accountService.findByID(userName);
			System.out.println(res);
			boolean test = sm.sendCodeEmail(account);
			if (!test) {
				req.setAttribute("message", "Lỗi gửi email!");
				RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/signUp.jsp");
				rd.forward(req, resp);
				return;
			}
			if (res == "Success") {
				req.setAttribute("username", userName);
				req.setAttribute("email", email);
				Cookie cookie1 = new Cookie("username", userName);
				cookie1.setMaxAge(60 * 60);
				resp.addCookie(cookie1);
				Cookie cookie2 = new Cookie("email", email);
				cookie2.setMaxAge(60 * 60);
				resp.addCookie(cookie2);

				req.getRequestDispatcher("views/authentication/verifycode.jsp").forward(req, resp);

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
				if (user.getAccount().isStatus() == false) {
					req.setAttribute("message", "Tài khoản chưa được kích hoạt!");
					RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
					rd.forward(req, resp);
					return;
				} else {
					List<Cart> carts = cartService.findByUserId(user.getUserId());
					HttpSession session = req.getSession(true);
					
					session.setAttribute("user", user);
					session.setAttribute("role", acc.getRole());
					session.setAttribute("cart", carts);
					resp.sendRedirect(req.getContextPath() + "/waiting");
					return;
				}
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

		String email = req.getParameter("email");
		User user = accountService.getUserByEmail(email);

		if (user == null) {
			req.setAttribute("message", "Email không tồn tại trong hệ thống!");
			req.getRequestDispatcher("views/authentication/forgotpassword.jsp").forward(req, resp);
			return;
		}

		Email sm = new Email();

		boolean test = sm.sendPasswordEmail(user);

		if (test) {
			req.setAttribute("message", "Vui lòng kiểm tra email để nhận mật khẩu nhé!");
			req.getRequestDispatcher("views/authentication/login.jsp").forward(req, resp);
		} else {
			req.setAttribute("message", "Lỗi gửi mail!");
			resp.sendRedirect(req.getContextPath() + "/authentication-forgotpassword");
		}

	}

	private void postVerifyCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String otp1 = req.getParameter("otp1");
		String otp2 = req.getParameter("otp2");
		String otp3 = req.getParameter("otp3");
		String otp4 = req.getParameter("otp4");
		String otp5 = req.getParameter("otp5");
		String otp6 = req.getParameter("otp6");

		String otp = otp1 + otp2 + otp3 + otp4 + otp5 + otp6;
		String username = "";
		String email = "";
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					username = cookie.getValue();
				}
				if (cookie.getName().equals("email")) {
					email = cookie.getValue();
				}
			}
		}
		Account account = accountService.findByID(username);

		if (account != null) {
			if (otp.equals(account.getCode())) {
				account.setStatus(true);
				accountService.update(account);
				Cookie cookie1 = new Cookie("username", "");
				cookie1.setMaxAge(0);
				resp.addCookie(cookie1);
				Cookie cookie2 = new Cookie("email", "");
				cookie2.setMaxAge(0);
				resp.addCookie(cookie2);
				resp.sendRedirect(req.getContextPath() + "/authentication-login");
				req.setAttribute("message", "Đã thêm thành công");
			} else {
				req.setAttribute("message", "Mã OTP chưa chính xác. Vui lòng nhập lại");
				req.setAttribute("username", username);
				req.setAttribute("email", email);
				req.getRequestDispatcher("views/authentication/verifycode.jsp").forward(req, resp);
			}
		}
	}

	private static final long serialVersionUID = 1L;
}
