package hcmute.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/user/capnhattaikhoan", "/user/capnhatmatkhau" })
public class CapNhatThongTinController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("capnhattaikhoan")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhattaikhoan.jsp");
			rd.forward(req, resp);
		}else if (url.contains("capnhatmatkhau")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhatmatkhau.jsp");
			rd.forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}

