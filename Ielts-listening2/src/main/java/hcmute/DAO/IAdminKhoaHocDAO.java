package hcmute.DAO;

import java.util.List;

import hcmute.entity.Course;

public interface IAdminKhoaHocDAO {
	Long countKhoaHoc();
	List<Course> FindAllCourse();
	Long starKhoaHoc(String courseId);
}
