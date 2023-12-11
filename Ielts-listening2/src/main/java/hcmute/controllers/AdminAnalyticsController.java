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
			Long sumRevenue =adminAnaService.sumRevenue();
			Long[] data = new Long[12];
			
			for(int i = 0; i < 12; i++) {
				data[i] = adminAnaService.costWithMonth(i+ 1);
			}
	
			Long[] data1 = new Long[12];
			for (int i = 0 ; i < 12; i++) {
				data1[i] =  Math.round((double) (data[i]) / (sumRevenue) *100) ;
			}

	
			Gson gson = new Gson();
			String jsonData = gson.toJson(data);
			req.setAttribute("jsonData", jsonData);
			
			Gson gson1 = new Gson();
			String jsonData1 = gson1.toJson(data1);
			req.setAttribute("jsonData1", jsonData1);
			

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
