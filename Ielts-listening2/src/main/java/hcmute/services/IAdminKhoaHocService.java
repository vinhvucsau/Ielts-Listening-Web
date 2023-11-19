package hcmute.services;

import java.util.List;

import hcmute.entity.Course;

public interface IAdminKhoaHocService {
	Long countKhoaHoc();
	List<Course> FindAllCourse();
	List<Course> FindAllCourseIncreaseCost();
	List<Course> FindAllCourseDecreaseCost();
	List<Course> FindAllCourseIncreaseRate();
	List<Course> FindAllCourseDecreaseRate();
	void deleteCourse(String course) throws Exception;
}
