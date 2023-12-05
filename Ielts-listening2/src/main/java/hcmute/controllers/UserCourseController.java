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
import hcmute.services.AdminKhoaHocServiceImpl;
import hcmute.services.IAdminKhoaHocService;

@WebServlet(urlPatterns = { "/user/course" })
public class UserCourseController extends HttpServlet {
	private static final long serialVersionUID = -687052188296756743L;

	IAdminKhoaHocService adminKhoaHocService = new AdminKhoaHocServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		String gia = req.getParameter("gia") == null ? "" : req.getParameter("gia");
		String rate = req.getParameter("rate") == null ? "" : req.getParameter("rate");

		if (url.contains("course")) {
			if (gia.equals("thapdencao")) {
				FindAllIncreaseCost(req, resp);
				Long count = adminKhoaHocService.countKhoaHoc();
				req.setAttribute("countCourse", count);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/coursePage.jsp");
				rd.forward(req, resp);
			} else if (gia.equals("caodenthap")) {
				FindAllDecreaseCost(req, resp);
				Long count = adminKhoaHocService.countKhoaHoc();
				req.setAttribute("countCourse", count);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/coursePage.jsp");
				rd.forward(req, resp);
			} else if (rate.equals("thapdencao")) {
				FindAllIncreaseRate(req, resp);
				Long count = adminKhoaHocService.countKhoaHoc();
				req.setAttribute("countCourse", count);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/coursePage.jsp");
				rd.forward(req, resp);

			} else if (rate.equals("caodenthap")) {
				FindAllDecreaseRate(req, resp);
				Long count = adminKhoaHocService.countKhoaHoc();
				req.setAttribute("countCourse", count);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/coursePage.jsp");
				rd.forward(req, resp);
			}

			else {
				FindAll(req, resp);
				Long count = adminKhoaHocService.countKhoaHoc();
				req.setAttribute("countCourse", count);
				RequestDispatcher rd = req.getRequestDispatcher("/views/user/coursePage.jsp");
				rd.forward(req, resp);
			}
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
