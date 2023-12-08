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
import hcmute.entity.UserCourse;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.CartServiceImpl;
import hcmute.services.CourseServiceImpl;
import hcmute.services.IAdminKhoaHocService;
import hcmute.services.ICartService;
import hcmute.services.ICourseService;
import hcmute.services.IUserCourseService;
import hcmute.services.IUserService;
import hcmute.services.UserCourseServiceImpl;
import hcmute.services.UserServiceImpl;

@WebServlet(urlPatterns = { "/user/cart", "/user/addToCart", "/user/mycart", "/user/deleteToCart" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		ICartService cartService = new CartServiceImpl();
		ICourseService courseService = new CourseServiceImpl();
		IUserService userService = new UserServiceImpl();
		IUserCourseService userCourseService = new UserCourseServiceImpl();
		if (url.contains("mycart")) {
			int countAddToCartByUser = 0;
			HttpSession session1 = req.getSession();
			User user1 = (User) session1.getAttribute("user");
			List<Cart> cartsUpdated = cartService.findByUserId(user1.getUserId());
			countAddToCartByUser = cartsUpdated.size();

			System.out.print("Size cua cart la :" + countAddToCartByUser);
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("user");
			String userId = req.getParameter("userId") == null ? "" : req.getParameter("userId");
			System.out.print("UserId la: " + userId);
			int networth = user.getNetworth() == null ? 0 : user.getNetworth();
			System.out.print("networth la: " + networth);
			List<Cart> carts = cartService.findByUserId(user.getUserId());
			List<Course> courseList = new ArrayList<Course>();
			ArrayList<CombineCart> newCarts = new ArrayList<CombineCart>();
			for (Cart cart : carts) {
				Course course = courseService.findById(cart.getCourse().getCourseId());
				CombineCart newCart1 = new CombineCart();
				newCart1.setCartId(cart.getCartId());
				newCart1.setCourse(course);
				List<UserCourse> listUc = userCourseService.findByUserIdAndCourseId(userId, course.getCourseId());
				if (listUc.size() == 0)
					newCart1.setIsBuy(false);
				else
					newCart1.setIsBuy(true);
				newCarts.add(newCart1);
			}
//			PrintWriter out = resp.getWriter();
//
//			for (CombineCart cart : newCarts) {
//
//				out.println(cart.getCartId() + " " + cart.getIsBuy());
//			}
			req.setAttribute("course", newCarts);
			req.setAttribute("countAddToCartByUser", countAddToCartByUser);
			req.setAttribute("user", user1);
			req.setAttribute("networth", networth);
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
				int isInCart = 0;
				for (Cart cart : carts) {
					if (cart.getCourse().getCourseId().equals(courseId)) {
						isInCart = 1;
						break;
					}
				}
				if (isInCart == 1) {
					req.setAttribute("err", "Existed");
					resp.sendRedirect(req.getContextPath() + "/user/" + lastPrevUrl);
				} else {
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
