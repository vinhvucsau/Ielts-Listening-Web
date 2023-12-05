package hcmute.controllers;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.AdminLessonServiceimpl;
import hcmute.services.IAdminKhoaHocService;
import hcmute.services.IAdminLessonService;
import hcmute.utils.Constants;
import hcmute.utils.DeleteImage;
import hcmute.utils.UploadUtils;

@WebServlet(urlPatterns = { "/admin/listLesson", "/admin/addLesson", "/admin/deleteLesson", "/admin/updateLesson" })
public class AdminLessonControler extends HttpServlet {

	private static final long serialVersionUID = 1L;

	IAdminLessonService lessonService = new AdminLessonServiceimpl();
	IAdminKhoaHocService courseService = new AdminKhoaHocServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		if(url.contains("listLesson")) {
			
			  String courseid = req.getParameter("courseId"); 
			  List<Lesson> listLesson = lessonService.findLessonByCourse(courseid); req.setAttribute("listLesson",
			  listLesson); RequestDispatcher rd =
			  req.getRequestDispatcher("/views/khoahoc/AdminLesson.jsp"); rd.forward(req,
			  resp);
			 
			
		} if(url.contains("deleteLesson")) {
			String lessonID = req.getParameter("id");
			try {
				lessonService.delete(lessonID);
			} catch (Exception e) {
				e.printStackTrace();			
			}
			RequestDispatcher rd = req.getRequestDispatcher("listLesson"); // file .jsp viết giao diện
			rd.forward(req, resp);
		}
	}



	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String url = req.getRequestURI().toString();

		if (url.contains("")) {
			Lesson lesson = new Lesson();
			try {
				BeanUtils.populate(lesson, req.getParameterMap());
//				lesson.setLessonName(req.getParameter("lessonName"));
//				Course course = courseService.findById(req.getParameter("courseName"));
//				lesson.setCourses(course);
				lessonService.insert(lesson);
				req.setAttribute("lesson", lesson);
				req.setAttribute("messSuccess", "Thanh cong");
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("messError", e.getMessage());
			}

			resp.sendRedirect(req.getContextPath() + "/admin/listLesson");

		}
	}
}
