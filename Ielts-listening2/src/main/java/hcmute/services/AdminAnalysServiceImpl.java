package hcmute.services;

import java.util.List;

import hcmute.DAO.AdminAnalysDAOImpl;
import hcmute.DAO.IAdminAnalysDAO;
import hcmute.entity.Course;
import hcmute.entity.User;

public class AdminAnalysServiceImpl implements IAdminAnalysService{
	IAdminAnalysDAO adminAnaDAO = new AdminAnalysDAOImpl();
	@Override
	public Long countUser() {
		// TODO Auto-generated method stub
		return adminAnaDAO.countUser();
	}
	@Override
	public Long countCourse() {
		// TODO Auto-generated method stub
		return adminAnaDAO.countCourse();
	}
	@Override
	public Long sumRevenue() {
		// TODO Auto-generated method stub
		return adminAnaDAO.sumRevenue();
	}
	@Override
	public Long costWithMonth1() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth1();
	}
	@Override
	public Long costWithMonth2() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth2();
	}
	@Override
	public Long costWithMonth3() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth3();
	}
	@Override
	public Long costWithMonth4() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth4();
	}
	@Override
	public Long costWithMonth5() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth5();
	}
	@Override
	public Long costWithMonth6() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth6();
	}
	@Override
	public Long costWithMonth7() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth7();
	}
	@Override
	public Long costWithMonth8() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth8();
	}
	@Override
	public Long costWithMonth9() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth9();
	}
	@Override
	public Long costWithMonth10() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth10();
	}
	@Override
	public Long costWithMonth11() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth11();
	}
	@Override
	public Long costWithMonth12() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costWithMonth12();
	}
	@Override
	public List<String> userIdDescreaseCost() {
		// TODO Auto-generated method stub
		return adminAnaDAO.userIdDescreaseCost();
	}
	@Override
	public List<Long> costDecrease() {
		// TODO Auto-generated method stub
		return adminAnaDAO.costDecrease();
	}
	@Override
	public Long countCourseByUserId(String userId) {
		// TODO Auto-generated method stub
		return adminAnaDAO.countCourseByUserId(userId);
	}
	@Override
	public Long countRatingByUserId(String userId) {
		// TODO Auto-generated method stub
		return adminAnaDAO.countRatingByUserId(userId);
	}
	@Override
	public User findUserByUserId(String userId) {
		// TODO Auto-generated method stub
		return adminAnaDAO.findUserByUserId(userId);
	}
	@Override
	public Long sumCostByUserId(String userId) {
		// TODO Auto-generated method stub
		return adminAnaDAO.sumCostByUserId(userId);
	}
	@Override
	public List<Course> listCourseOrderByTime() {
		// TODO Auto-generated method stub
		return adminAnaDAO.listCourseOrderByTime();
	}

}
