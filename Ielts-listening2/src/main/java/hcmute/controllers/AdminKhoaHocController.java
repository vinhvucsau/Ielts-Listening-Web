package hcmute.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.Course;
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.IAdminKhoaHocService;

@WebServlet(urlPatterns = { "/admin/khoahoc", "/admin/khoahoc/giathapdencao" })
public class AdminKhoaHocController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	IAdminKhoaHocService adminKhoaHocService = new AdminKhoaHocServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("khoahoc")) {
			FindAll(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/khoahoc/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		} else if(url.contains("giacaodenthap")){
			FindAll(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/khoahoc/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
			
		}else if(url.contains("giathapdencao")) {
			FindAllIncreaseCost(req, resp);
			Long count = adminKhoaHocService.countKhoaHoc();
			req.setAttribute("countCourse", count);
			RequestDispatcher rd = req.getRequestDispatcher("/views/khoahoc/AdminKhoaHoc.jsp");
			rd.forward(req, resp);
		}
	}

	private void FindAllIncreaseCost(HttpServletRequest req, HttpServletResponse resp) {
		try {
			List<Course> list = adminKhoaHocService.FindAllCourseIncreaseCost();

			req.setAttribute("courseIncreaseCost", list);
			String courseId = req.getParameter("courseId");
			
			Long listStar = adminKhoaHocService.starCourse(courseId);
			req.setAttribute("listStar", listStar);
			System.out.print("List star la: " + listStar);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}

	private void FindAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			List<Course> list = adminKhoaHocService.FindAllCourse();

			System.out.print(list.size());
			req.setAttribute("course", list);
			String courseId = req.getParameter("courseId");

			System.out.print("course Id la: " + courseId);
			
			Long listStar = adminKhoaHocService.starCourse(courseId);
			req.setAttribute("listStar", listStar);
			System.out.print("List star la: " + listStar);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}
	
}
