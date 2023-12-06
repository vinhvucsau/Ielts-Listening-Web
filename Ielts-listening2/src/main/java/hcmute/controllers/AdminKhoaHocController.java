package hcmute.controllers;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import hcmute.entity.Course;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.CourseServiceImpl;
import hcmute.services.IAdminKhoaHocService;
import hcmute.services.ICourseService;
import hcmute.utils.Constants;
import hcmute.utils.UploadUtils;

@MultipartConfig
@WebServlet(urlPatterns = { "/admin/khoahoc", "/admin/deletecourse","/admin/insertCourse", "/admin/lesson" })
public class AdminKhoaHocController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ICourseService courseService = new CourseServiceImpl();
	IAdminKhoaHocService adminKhoaHocService = new AdminKhoaHocServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		String gia = req.getParameter("gia") == null ? "" : req.getParameter("gia");
		String rate = req.getParameter("rate") == null ? "" : req.getParameter("rate");

		if (url.contains("/deletecourse")) {
			Delete(req, resp);
			resp.sendRedirect(req.getContextPath() + "/admin/khoahoc");
		} else if (gia.equals("thapdencao")) {
			FindAllIncreaseCost(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		} else if (gia.equals("caodenthap")) {
			FindAllDecreaseCost(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		} else if (rate.equals("thapdencao")) {
			FindAllIncreaseRate(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminKhoaHoc.jsp");
			rd.forward(req, resp);

		} else if (rate.equals("caodenthap")) {
			FindAllDecreaseRate(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		} else if (url.contains("lesson")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/khoahoc/AdminLesson.jsp");
			rd.forward(req, resp);
		}

		else {
			FindAll(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		} 

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		if (url.contains("insertCourse"))
		{
		Course model = new Course();
		try {
			//BeanUtils.populate(model, req.getParameterMap());
			model.setCourseId("");
			System.out.println(req.getParameter("courseName"));
			model.setCourseName(req.getParameter("courseName"));
			model.setDescription(req.getParameter("description"));
			model.setCost(Integer.parseInt(req.getParameter("cost")));
			if (req.getPart("image").getSize() != 0) {
				// tạo tên file mới để khỏi bị trùng
				String fileName = "" + System.currentTimeMillis();
				model.setImage(UploadUtils.processUpload("image", req, Constants.DIR + "\\courseIMG\\", fileName));
			}
			if (req.getPart("trailer").getSize() != 0) {
				// tạo tên file mới để khỏi bị trùng
				String fileName = "" + System.currentTimeMillis();
				model.setTrailer(UploadUtils.processUpload("trailer", req, Constants.DIR + "\\courseTrailer\\", fileName));
			}
			Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("enrrollmentDate")); 
			model.setEnrrolmentDate(date1);
			courseService.insert(model);
			req.setAttribute("course", model);
			req.setAttribute("message", "add succes");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "add faild");
		}
		resp.sendRedirect(req.getContextPath()+"/admin/khoahoc");	

		}

	}

	private void FindAllDecreaseRate(HttpServletRequest req, HttpServletResponse resp) {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourseDecreaseRate();

			req.setAttribute("course", list);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}

	}

	private void FindAllIncreaseRate(HttpServletRequest req, HttpServletResponse resp) {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourseIncreaseRate();

			req.setAttribute("course", list);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}

	}

	private void Delete(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String courseId = req.getParameter("courseId");
			System.out.print("courseId la: " + courseId);
			adminKhoaHocService.deleteCourse(courseId);
			req.setAttribute("Message", "Da xoa thanh cong");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}

	}

	private void FindAllDecreaseCost(HttpServletRequest req, HttpServletResponse resp) {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourseDecreaseCost();

			req.setAttribute("course", list);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}

	private void FindAllIncreaseCost(HttpServletRequest req, HttpServletResponse resp) {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourseIncreaseCost();

			req.setAttribute("course", list);
			String courseId = req.getParameter("courseId");

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}

	private void FindAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourse();

			System.out.print(list.size());
			req.setAttribute("course", list);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}

}
