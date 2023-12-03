package hcmute.services;

import java.util.List;

import hcmute.DAO.AdminKhoaHocDAOImpl;
import hcmute.DAO.IAdminKhoaHocDAO;
import hcmute.entity.Course;

public class AdminKhoaHocServiceImpl implements IAdminKhoaHocService{
	IAdminKhoaHocDAO khoaHocDAO = new AdminKhoaHocDAOImpl();

	@Override
	public Long countKhoaHoc() {
		return khoaHocDAO.countKhoaHoc();
	}

	@Override
	public List<Course> FindAllCourse() {
		return khoaHocDAO.FindAllCourse();
	}

	@Override
	public List<Course> FindAllCourseIncreaseCost() {
		return khoaHocDAO.FindAllCourseIncreaseCost();
	}

	@Override
	public List<Course> FindAllCourseDecreaseCost() {
		return khoaHocDAO.FindAllCourseDecreaseCost();
	}

	@Override
	public void deleteCourse(String course) throws Exception {
		khoaHocDAO.deleteCourse(course);
	}

	@Override
	public List<Course> FindAllCourseIncreaseRate() {
		return khoaHocDAO.FindAllCourseIncreaseRate();
	}

	@Override
	public List<Course> FindAllCourseDecreaseRate() {
		return khoaHocDAO.FindAllCourseDecreaseRate();
	}
	

}
