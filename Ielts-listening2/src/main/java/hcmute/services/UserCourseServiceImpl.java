package hcmute.services;

import java.util.List;

import hcmute.DAO.IUserCourseDAO;
import hcmute.DAO.UserCourseDAOImpl;
import hcmute.entity.UserCourse;

public class UserCourseServiceImpl implements IUserCourseService {
	IUserCourseDAO userCourseDAO = new UserCourseDAOImpl();

	public List<UserCourse> findByUserIdAndCourseId(String userId, String courseId) {
		return userCourseDAO.findByUserIdAndCourseId(userId, courseId);
	}
}
