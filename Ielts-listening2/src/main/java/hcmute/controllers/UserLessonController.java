package hcmute.controllers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hcmute.entity.AnswerLesson;
import hcmute.entity.CommentLesson;
import hcmute.entity.EnrrolLesson;
import hcmute.entity.Lesson;
import hcmute.entity.RepComment;
import hcmute.entity.User;
import hcmute.services.AnswerLessonServiceImpl;
import hcmute.services.CommentServiceImpl;
import hcmute.services.EnrollLessonService;
import hcmute.services.IAnswerLessonService;
import hcmute.services.ICommentService;
import hcmute.services.IEnrollLessonService;
import hcmute.services.ILessonService;
import hcmute.services.IRepCommentService;
import hcmute.services.IUserService;
import hcmute.services.LessonServiceImpl;
import hcmute.services.RepCommentServiceImpl;
import hcmute.services.UserServiceImpl;

@WebServlet(urlPatterns = { "/user/lesson", "/user/reply" , "/user/comment", "/user/rate"})
public class UserLessonController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	ILessonService lessonService = new LessonServiceImpl();
	ICommentService cmtService = new CommentServiceImpl();
	IRepCommentService repService = new RepCommentServiceImpl();
	IUserService userService = new UserServiceImpl();
	IEnrollLessonService enrService = new EnrollLessonService();
	IAnswerLessonService ansService = new AnswerLessonServiceImpl();
	
	Date curDate = new Date();//current date
	Lesson curLesson = new Lesson();//current lesson
	
	User user = new User();//session login
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String url = req.getRequestURI().toString();
		
		List<CommentLesson> listCmt = cmtService.findAll();
		List<RepComment> listRep = repService.findAll();
		List<User> listUser = userService.findAll();
		List<EnrrolLesson> listEnroll = enrService.findAll();
		List<AnswerLesson> listAnswer = ansService.findAll();
		
		HttpSession session = req.getSession(false);
		if(session != null && session.getAttribute("user") != null) {
			user = (User)session.getAttribute("user");
		}
		else {
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/test.jsp");
			rd.forward(req, resp);
		}
		
		if (url.contains("lesson")) {
			
			String lessID = "Lesson1045";
			curLesson = lessonService.findOneById(lessID);

			req.setAttribute("lesson", curLesson);
			req.setAttribute("listCmt", listCmt);
			req.setAttribute("listRep", listRep);
			req.setAttribute("listUser", listUser);
			req.setAttribute("user", user);
			req.setAttribute("listEnroll", listEnroll);
			req.setAttribute("listAnswer", listAnswer);
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/user/Lesson-content.jsp");
			rd.forward(req, resp);
		} else if (url.contains("reply")) {
			
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String url = req.getRequestURI().toString();

		if (url.contains("reply")) {
			CommentLesson c = cmtService.findOneById(req.getParameter("id"));
			
			RepComment rep = new RepComment();
			rep.setRepCommentId("id");
			rep.setUsers(user);
			rep.setReplyComment(req.getParameter("reply-content"));
			rep.setCommentLesson(c);
			rep.setCreateTime(curDate);
			try {
				repService.insert(rep);
//				req.setAttribute("u", user);
//				req.setAttribute("text", req.getParameter("reply-content"));
//				req.setAttribute("cmt", c);
				resp.sendRedirect(req.getContextPath() + "/user/lesson#review");
			} catch (Exception e) {
				e.getStackTrace();
				req.setAttribute("e", e);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/test.jsp");
				rd.forward(req, resp);
			}
			
			
			//gửi bằng req để truyền được cái listCmt mới vào và để truyền được url là #review
			//cho JSP biết
			
			
		} else if (url.contains("comment")) {
			
			CommentLesson c = new CommentLesson();
			c.setUsers(user);
			c.setCommentId("ID");
			c.setComment(req.getParameter("comment-content"));
			c.setCreateTime(curDate);
			Lesson l = lessonService.findOneById(req.getParameter("lessId"));
			c.setLessons(l);
			
			try {
				cmtService.insert(c);
				resp.sendRedirect(req.getContextPath() + "/user/lesson#review");
			} catch (Exception e) {
				e.getMessage();
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/test.jsp");
				rd.forward(req, resp);
			}
			
		}else if (url.contains("rate")) {
			
			EnrrolLesson enr = enrService.findOneByUser_Lesson(user.getUserId(), curLesson.getLessonId());
			Integer numRating = Integer.parseInt(req.getParameter("result-rating"));
			enr.setNumberOfStar(numRating);
			
			try {
				enrService.update(enr);
				resp.sendRedirect(req.getContextPath() + "/user/lesson#review");
			} catch (Exception e) {
				e.getMessage();
				req.setAttribute("e", e);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/test.jsp");
				rd.forward(req, resp);
			}
			
		}
	}
}
