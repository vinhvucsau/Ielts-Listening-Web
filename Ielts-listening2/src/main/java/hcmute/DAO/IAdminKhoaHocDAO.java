package hcmute.DAO;

import java.util.List;

import hcmute.entity.Course;

public interface IAdminKhoaHocDAO {
	Long countKhoaHoc();
	List<Course> FindAllCourse();
	List<Course> FindAllCourseIncreaseCost();
	List<Course> FindAllCourseDecreaseCost();
	List<Integer> starCourse(String courseId);
}
