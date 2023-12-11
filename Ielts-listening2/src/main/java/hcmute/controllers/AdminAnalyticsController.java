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

import com.google.gson.Gson;

import hcmute.entity.Course;
import hcmute.entity.User;
import hcmute.services.AdminAnalysServiceImpl;
import hcmute.services.IAdminAnalysService;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;

@WebServlet(urlPatterns = { "/admin/analytics" })
public class AdminAnalyticsController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	IAdminAnalysService adminAnaService = new AdminAnalysServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("analytics")) {
			Long countUser = adminAnaService.countUser();
			Long countCourse = adminAnaService.countCourse();
			Long sumRevenue = adminAnaService.sumRevenue();
			Long revenueM1 = adminAnaService.costWithMonth1();
			Long revenueM2 = adminAnaService.costWithMonth2();
			Long revenueM3 = adminAnaService.costWithMonth3();
			Long revenueM4 = adminAnaService.costWithMonth4();
			Long revenueM5 = adminAnaService.costWithMonth5();
			Long revenueM6 = adminAnaService.costWithMonth6();
			Long revenueM7 = adminAnaService.costWithMonth7();
			Long revenueM8 = adminAnaService.costWithMonth8();
			Long revenueM9 = adminAnaService.costWithMonth9();
			Long revenueM10 = adminAnaService.costWithMonth10();
			Long revenueM11 = adminAnaService.costWithMonth11();
			Long revenueM12 = adminAnaService.costWithMonth12();

			Long[] data = new Long[12];
			data[0] = revenueM1;
			data[1] = revenueM2;
			data[2] = revenueM3;
			data[3] = revenueM4;
			data[4] = revenueM5;
			data[5] = revenueM6;
			data[6] = revenueM7;
			data[7] = revenueM8;
			data[8] = revenueM9;
			data[9] = revenueM10;
			data[10] = revenueM11;
			data[11] = revenueM12;

			Gson gson = new Gson();
			String jsonData = gson.toJson(data);
			req.setAttribute("jsonData", jsonData);
			

			req.setAttribute("sumRevenue", sumRevenue);
			req.setAttribute("countUser", countUser);
			req.setAttribute("countCourse", countCourse);

			List<String> userId = adminAnaService.userIdDescreaseCost();
			List<String> userIdJsp = new ArrayList<>();
			
			
			List<User> user = new ArrayList<User>();
			List<Long> countCourse1 = new ArrayList<>();
			List<Long> countRating1 = new ArrayList<>();
			List<Long> sumCost = new ArrayList<>();
			List<Course> listCourse = adminAnaService.listCourseOrderByTime();
			List<Course> listCourseJsp = new ArrayList<>();
			
			if(listCourse.size() > 4) {
				for(int i = 0; i < 4; i++) {
					listCourseJsp.add(listCourse.get(i));
				}
			}else {
				for(int i = 0; i < listCourse.size(); i++) {
					listCourseJsp.add(listCourse.get(i));
				}
			}
			
			if(userId.size() < 5) {
				for(int i = 0; i < userId.size(); i++) {
					userIdJsp.add(userId.get(i));
					user.add(adminAnaService.findUserByUserId(userId.get(i)));
					countCourse1.add(adminAnaService.countCourseByUserId(userId.get(i)));
					countRating1.add(adminAnaService.countRatingByUserId(userId.get(i)));
					sumCost.add(adminAnaService.sumCostByUserId(userId.get(i)));
				}
			}
			else {
				for(int i = 0; i < 5; i++) {
					userIdJsp.add(userId.get(i));
					user.add(adminAnaService.findUserByUserId(userId.get(i)));
					countCourse1.add(adminAnaService.countCourseByUserId(userId.get(i)));
					countRating1.add(adminAnaService.countRatingByUserId(userId.get(i)));
					sumCost.add(adminAnaService.sumCostByUserId(userId.get(i)));
				}
			}
			
			System.out.print("user la: " + userId);
			System.out.print("course la: " + countCourse1);
			System.out.print("rating la: " + countRating1);
			
			
			req.setAttribute("userId", userIdJsp);
			req.setAttribute("countCourse1", countCourse1);
			req.setAttribute("countRating1", countRating1);
			req.setAttribute("sumCost", sumCost);
			req.setAttribute("listCourseJsp", listCourseJsp);
			
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/Analytics.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
