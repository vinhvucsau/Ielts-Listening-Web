package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hcmute.entity.Cart;
import hcmute.entity.CombineCart;
import hcmute.entity.Course;
import hcmute.entity.User;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.CartServiceImpl;
import hcmute.services.CourseServiceImpl;
import hcmute.services.IAdminKhoaHocService;
import hcmute.services.ICartService;
import hcmute.services.ICourseService;

@WebServlet(urlPatterns = { "/user/cart", "/user/addToCart", "/user/mycart", "/user/deleteToCart" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		ICartService cartService = new CartServiceImpl();
		ICourseService courseService = new CourseServiceImpl();

		if (url.contains("mycart")) {
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("user");
			List<Cart> carts = cartService.findByUserId(user.getUserId());
			List<Course> courseList = new ArrayList<Course>();
			ArrayList<CombineCart> newCarts = new ArrayList<CombineCart>();
			for (Cart cart : carts) {
				Course course = courseService.findById(cart.getCourse().getCourseId());
				CombineCart newCart1 = new CombineCart();
				newCart1.setCartId(cart.getCartId());
				newCart1.setCourse(course);
				newCarts.add(newCart1);

			}

			req.setAttribute("course", newCarts);
			req.getRequestDispatcher("/views/user/cart.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		ICourseService courseService = new CourseServiceImpl();
		ICartService cartService = new CartServiceImpl();
		HttpSession session = req.getSession();
		String prevUrl = req.getHeader("referer");
		String[] prev = prevUrl.split("/");
		String lastPrevUrl = prev[prev.length - 1];
		if (url.contains("addToCart")) {

			User user = (User) session.getAttribute("user");
			if (user == null) {
				req.setAttribute("err", "Not Login");
				resp.sendRedirect(req.getContextPath() + "/user/" + lastPrevUrl);
			} else {
				String courseId = req.getParameter("courseId");
				List<Cart> carts = (List<Cart>) session.getAttribute("cart");

				Course course = courseService.findById(courseId);

				Cart cart = new Cart();
				cart.setCourse(course);
				cart.setUsers(user);
				cart.setBuy(false);
				cart.setCartId("ID");

				cartService.insert(cart);

				List<Cart> cartsUpdated = cartService.findByUserId(user.getUserId());
				session.setAttribute("cart", cartsUpdated);
				resp.sendRedirect(req.getContextPath() + "/user/" + lastPrevUrl);
			}

		} else if (url.contains("deleteToCart")) {
			String cartId = req.getParameter("cartId");
			cartService.delete(cartId);
			User user = (User) session.getAttribute("user");
			List<Cart> cartsUpdated = cartService.findByUserId(user.getUserId());
			session.setAttribute("cart", cartsUpdated);
			resp.sendRedirect(req.getContextPath() + "/user/" + lastPrevUrl);
		}
	}
}
