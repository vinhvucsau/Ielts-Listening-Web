package hcmute.controllers;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import hcmute.entity.AnswerLesson;
import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.AnswerLessonService;
import hcmute.services.CourseServiceImpl;
import hcmute.services.IAdminKhoaHocService;

import hcmute.services.LessonServiceImpl;
import hcmute.utils.Constants;
import hcmute.utils.DeleteImage;
import hcmute.utils.UploadUtils;

@MultipartConfig
@WebServlet(urlPatterns = { "/admin/listLesson", "/admin/addLesson", "/admin/deleteLesson", "/admin/updateLesson", 
							"/admin/addAnswer", "/admin/deleteAnswer", "/admin/updateAnswer"}
							)
public class AdminLessonControler extends HttpServlet {

	private static final long serialVersionUID = 1L;
	String courseIdAdd;

	LessonServiceImpl lessonService = new LessonServiceImpl ();
	CourseServiceImpl courseService = new CourseServiceImpl();
	AnswerLessonService answerLessonService = new AnswerLessonService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String courseId = req.getParameter("courseId");
		courseIdAdd = courseId;
		if (url.contains("listLesson")) {
			List<Lesson> listLesson = lessonService.findLessonByCourse(courseId);
				
			/*
			 * String lessonId = req.getParameter("lessonId"); System.out.print("kkkkk" +
			 * lessonId);
			 */
			 
			List<AnswerLesson> listAnsLesson = answerLessonService.findAll();
			req.setAttribute("listLesson", listLesson);
			req.setAttribute("listAnsLesson", listAnsLesson);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminLesson.jsp");
			rd.forward(req, resp);

		} else if (url.contains("deleteLesson")) {
			String lessonID = req.getParameter("Id");
			try {
				lessonService.delete(lessonID);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher rd = req.getRequestDispatcher("listLesson"); // file .jsp viết giao diện 
			rd.forward(req, resp);
			 
		} else if (url.contains("deleteAnswer")) {
			String ansID = req.getParameter("idAnswer");
			try {
				answerLessonService.delete(ansID);
				req.setAttribute("messSuccess", "oke");
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("messError", e.getMessage());
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
			/*
			 * String courseId = req.getParameter("courseId"); System.out.print("tttt" +
			 * courseId);
			 */
			String lessonId = "Lesson1051";
			Course course = courseService.findById(courseIdAdd);
			lesson.setLessonName(lessonName);
			lesson.setCourses(course);
			lesson.setLessonId(lessonId);
			lessonService.insert(lesson);
			
			resp.sendRedirect(req.getContextPath() + "/admin/listLesson?courseId="+courseIdAdd);
		} else if (url.contains("addAnswer")) {
			AnswerLesson ans = new AnswerLesson();
			try {
				ans.setAnswerId("");
				ans.setAnswerKey("answerKey");
				ans.setNumber(Integer.parseInt(req.getParameter("number").toString()));
				Lesson lesson = lessonService.findOneById(req.getParameter("Id"));
				ans.setLessons(lesson);
				
				answerLessonService.insert(ans);
				req.setAttribute("ans", ans);
				req.setAttribute("messSuccess", "answer lessson ok");
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("messError", e.getMessage());
			}
			resp.sendRedirect(req.getContextPath() + "/admin/listLesson?courseId="+courseIdAdd);	
		} /*
			 * else if (url.contains("updateLesson")) { Lesson lesson = new Lesson(); try {
			 * 
			 * lesson.setLessonName(req.getParameter("lessonName"));
			 * lesson.setAnswerSheet(req.getParameter("answerSheet"));
			 * lesson.setLessonId(req.getParameter("lessonId"));
			 * 
			 * long millis = System.currentTimeMillis(); Date date = new Date(millis);
			 * lesson.setCreatedDate(date);
			 * 
			 * Lesson oldModel = lessonService.findOneById(lesson.getLessonId());
			 * 
			 * if (req.getPart("video").getSize() == 0) {
			 * lesson.setVideo(oldModel.getVideo()); } else { //xoa anh cu if
			 * (oldModel.getVideo() != null) { String fileImg = oldModel.getVideo();
			 * DeleteImage.deleteImage(oldModel.getVideo(), Constants.FOLDER_TOPIC); }
			 * //update anh moi String fileName = "" + System.currentTimeMillis();
			 * lesson.setVideo(UploadUtils.processUpload("video", req, Constants.DIR +
			 * "\\"+ Constants.FOLDER_TOPIC +"\\", fileName)); }
			 * 
			 * lessonService.update(lesson); req.setAttribute("messSuccess", "OKKKK"); }
			 * catch (Exception e) { req.setAttribute("messError", e.getMessage());
			 * e.printStackTrace(); } resp.sendRedirect(req.getContextPath() +
			 * "/admin/listLesson?courseId="+courseIdAdd); } else if
			 * (url.contains("updateAnswer")) { AnswerLesson ans = new AnswerLesson(); try {
			 * 
			 * // BeanUtils.populate(topic, req.getParameterMap());
			 * ans.setAnswerId(req.getParameter("id"));
			 * ans.setAnswerKey(req.getParameter("answerKey"));
			 * ans.setNumber(Integer.parseInt(req.getParameter("number").toString()));
			 * AnswerLesson tempAns = answerLessonService.findById(req.getParameter("id"));
			 * Lesson lesson =
			 * lessonService.findOneById(tempAns.getLessons().getLessonId());
			 * ans.setLessons(lesson);
			 * 
			 * answerLessonService.update(ans);
			 * 
			 * req.setAttribute("ans", ans); req.setAttribute("messSuccess", "Thanh cong");
			 * } catch (Exception e) { e.printStackTrace(); req.setAttribute("messError",
			 * e.getMessage()); }
			 * 
			 * resp.sendRedirect(req.getContextPath() +
			 * "/admin/listLesson?courseId="+courseIdAdd); }
			 */
	}
}
