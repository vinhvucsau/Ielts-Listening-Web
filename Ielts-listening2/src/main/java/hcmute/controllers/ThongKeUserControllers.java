package hcmute.controllers;
import com.google.gson.Gson;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.Account;
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;

@WebServlet(urlPatterns = { "/user/thongkediem" })
public class ThongKeUserControllers  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService = new UserServiceImpl();
	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		
		//Set cứng ID để test chức năng
		String id = req.getParameter("userId");
		User user = findUserById(id);
		Account account = accountService.findByID(user.getAccount().getUserName());
		int[] data = {30, 32, 15, 25, 18, 28, 22, 32, 24, 34, 26, 38};
		Gson gson = new Gson();
		String jsonData = gson.toJson(data);
		req.setAttribute("jsonData", jsonData);
		req.setAttribute("currentUser", user);
		req.setAttribute("account", account);
	 if (url.contains("thongkediem")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_thongkediem.jsp");
			rd.forward(req, resp);
		}
	}
	private User findUserById(String id) {
		User user = userService.findUserByID(id);
		return user;
	}
	
}