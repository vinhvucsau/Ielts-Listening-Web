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
	public Long starCourse(String id) {
		return khoaHocDAO.starKhoaHoc(id);
	}

	@Override
	public List<Course> FindAllCourseIncreaseCost() {
		return khoaHocDAO.FindAllCourseIncreaseCost();
	}

	@Override
	public List<Course> FindAllCourseDecreaseCost() {
		return khoaHocDAO.FindAllCourseDecreaseCost();
	}
	

}
