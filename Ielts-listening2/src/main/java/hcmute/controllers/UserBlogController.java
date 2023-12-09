package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
import hcmute.utils.DeleteImage;
import hcmute.utils.UploadUtils;

@MultipartConfig

@WebServlet(urlPatterns = {"/user/blogs-page", "/user/blogs", "/user/update-blog-status", "/user/edit-blog","/user/delete-blog", "/user/add-blog"})
public class UserBlogController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	IBlogService blogService = new BlogServiceImpl();
	IUserService uService = new UserServiceImpl();

	User user = new User();// session login

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
		if (url.contains("blogs-page")) {
			req.setAttribute("folder", Constants.FOLDER_AVATAR);
			req.setAttribute("listBlog", listBlog);
			req.setAttribute("listUser", listUser);
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/blogs_page.jsp");
			rd.forward(req, resp);
			
		} else if (url.contains("blogs")) {
			req.setAttribute("user", user);
			req.setAttribute("folder", Constants.FOLDER_AVATAR);
			req.setAttribute("listBlog", listBlog);
			req.setAttribute("listUser", listUser);
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/blog.jsp");
			rd.forward(req, resp);
		} else if (url.contains("update-blog-status")) {
			Blog b = blogService.findOneById(req.getParameter("id"));
			b.setStatus(Integer.parseInt(req.getParameter("status")));
			try {
				blogService.update(b);
				resp.sendRedirect(req.getContextPath() + "/user/blogs");
			} catch (Exception e) {
				req.setAttribute("e", e.getMessage());
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/error404.jsp");
				rd.forward(req, resp);
			}
		} else if (url.contains("add-blog")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/addBlog.jsp");
			rd.forward(req, resp);
		} else if (url.contains("edit-blog")) {
			String id = req.getParameter("id");
			Blog oldBlog = blogService.findOneById(id);

			req.setAttribute("blog", oldBlog);
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/editBlog.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		if (url.contains("add-blog")) {
			if (req.getPart("image").getSize() != 0) {
				Blog newBlog = new Blog();
				long millis = System.currentTimeMillis();
				Date date = new Date(millis);
				newBlog.setCreatedDate(date);
				String fileName = "" + System.currentTimeMillis();
				newBlog.setImage((UploadUtils.processUpload("image", req, Constants.DIR + "\\blogIMG\\", fileName)));

				String title = req.getParameter("title");
				String content = req.getParameter("content");
				User user = (User) session.getAttribute("user");
				newBlog.setBlogId("ID");
				newBlog.setContent(content);
				newBlog.setStatus(0);
				newBlog.setTitle(title);
				newBlog.setUsers(user);

				blogService.insert(newBlog);
				resp.sendRedirect(req.getContextPath() + "/user/blogs");
			}
		} else if (url.contains("edit-blog")) {
			String id = req.getParameter("id");
			Blog oldBlog = blogService.findOneById(id);

			if (req.getPart("image").getSize() == 0) {
				user.setImage(user.getImage());
			} else {
				if (user.getImage() != null) {
					DeleteImage.deleteImage(user.getImage(), Constants.FOLDER_AVATAR);
				} // update anh moi
				String fileName = "" + System.currentTimeMillis();
				oldBlog.setImage((UploadUtils.processUpload("image", req, Constants.DIR + "\\blogIMG\\", fileName)));
			}

			String title = req.getParameter("title");
			String content = req.getParameter("content");

			if (title.trim() != "")
				oldBlog.setTitle(title);
			if (content.trim() != "")
				oldBlog.setContent(content);

			blogService.update(oldBlog);
			resp.sendRedirect(req.getContextPath() + "/user/blogs");

		}
	}
}
