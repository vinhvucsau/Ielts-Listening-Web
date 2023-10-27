package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.services.Course.CourseServiceImpl;
import hcmute.services.Course.ICourseService;
import hcmute.services.Lesson.ILessonService;
import hcmute.services.Lesson.LessonServiceImpl;

@WebServlet(urlPatterns = {"/admin/taobode"})
public class AdminAddCourseController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	ICourseService courseService = new CourseServiceImpl();
	ILessonService lessService = new LessonServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("taobode")) {
			//List<Course> listCourse = courseService.getAllCourses();
			//req.setAttribute("listCourse", listCourse);
			
			List<Lesson> listLesson = lessService.getAllLesson();
			req.setAttribute("listLesson", listLesson);
			RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/testTaobode.jsp");
			rd.forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
