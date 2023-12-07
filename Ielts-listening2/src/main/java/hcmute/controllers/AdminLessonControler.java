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

import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.CourseServiceImpl;
import hcmute.services.IAdminKhoaHocService;

import hcmute.services.LessonServiceImpl;

@WebServlet(urlPatterns = { "/admin/listLesson", "/admin/addLesson", "/admin/deleteLesson", "/admin/updateLesson" })
public class AdminLessonControler extends HttpServlet {

	private static final long serialVersionUID = 1L;

	LessonServiceImpl lessonService = new LessonServiceImpl ();
	CourseServiceImpl courseService = new CourseServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		if (url.contains("listLesson")) {
			
			String courseId = req.getParameter("courseId");
			List<Lesson> listLesson = lessonService.findLessonByCourse(courseId);
			req.setAttribute("listLesson", listLesson);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminLesson.jsp");
			rd.forward(req, resp);

		}
		if (url.contains("deleteLesson")) {
			String lessonID = req.getParameter("Id");
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

		String url = req.getRequestURL().toString();

		if (url.contains("addLesson")) {
			Lesson lesson = new Lesson();
			String lessonName = "LessonName";
			// String courseId = "Course1040";
			String courseId = req.getParameter("courseId"); 
			System.out.print("tttt" + courseId);
			String lessonId = "Lesson1051";
			Course course = courseService.findById(courseId);
			lesson.setLessonName(lessonName);
			lesson.setCourses(course);
			lesson.setLessonId(lessonId);
			lessonService.insert(lesson);
			/* req.setAttribute("lesson", lesson); */
			
			resp.sendRedirect(req.getContextPath() + "/admin/listLesson"); 

		}
	}
}
