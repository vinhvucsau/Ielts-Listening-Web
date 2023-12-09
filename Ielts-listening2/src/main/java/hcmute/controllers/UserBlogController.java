package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hcmute.entity.Blog;
import hcmute.entity.User;
import hcmute.services.BlogServiceImpl;
import hcmute.services.IBlogService;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;
import hcmute.utils.Constants;

@MultipartConfig
@WebServlet(urlPatterns = {"/user/blogs", "/user/delete-blog"})
public class UserBlogController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	IBlogService blogService = new BlogServiceImpl();
	IUserService uService = new UserServiceImpl();
	
	User user = new User();//session login
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		List<Blog> listBlog = blogService.findAll();
		List<User> listUser = uService.findAll();
		
		
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			user = (User) session.getAttribute("user");
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/error404.jsp");
			rd.forward(req, resp);
		}
		
		if (url.contains("blogs")) {
			req.setAttribute("user", user);
			req.setAttribute("folder", Constants.FOLDER_AVATAR);
			req.setAttribute("listBlog", listBlog);
			req.setAttribute("listUser", listUser);
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/blog.jsp");
			rd.forward(req, resp);
		} else if (url.contains("delete-blog")) {
			Blog b = blogService.findOneById(req.getParameter("id"));
			b.setStatus(Integer.parseInt(req.getParameter("status"))); //trash
			try {
				blogService.update(b);
				resp.sendRedirect(req.getContextPath() + "/user/blogs");
			} catch (Exception e) {
				req.setAttribute("e", e.getMessage());
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/error404.jsp");
				rd.forward(req, resp);
			}
		}
	}
}
