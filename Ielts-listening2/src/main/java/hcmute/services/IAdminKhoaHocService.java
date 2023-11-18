package hcmute.services;

import java.util.List;

import hcmute.entity.Course;

public interface IAdminKhoaHocService {
	Long countKhoaHoc();
	List<Course> FindAllCourse();
	Long starCourse(String id);
	List<Course> FindAllCourseIncreaseCost();
	List<Course> FindAllCourseDecreaseCost();
}
