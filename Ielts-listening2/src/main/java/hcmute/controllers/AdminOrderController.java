package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.MockTest;
import hcmute.entity.Payment;
import hcmute.services.IPaymentService;
import hcmute.services.PaymentServiceImpl;

@WebServlet(urlPatterns = { "/admin/order" })
public class AdminOrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	IPaymentService service = new PaymentServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("order")) {
			List<Payment> listcate = service.findAll();
			req.setAttribute("list", listcate);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/order.jsp");
			rd.forward(req, resp);
		}
	}
}
