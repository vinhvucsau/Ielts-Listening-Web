package hcmute.services.Course;

import java.util.List;

import hcmute.DAO.Course.CourseDAOImpl;
import hcmute.DAO.Course.ICourseDAO;
import hcmute.entity.Course;

public class CourseServiceImpl implements ICourseService {

	ICourseDAO courseDAO = new CourseDAOImpl();
	@Override
	public List<Course> getAllCourses() {
		return courseDAO.getAllCourses();
	}

}
