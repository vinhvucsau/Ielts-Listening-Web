package hcmute.DAO;

import java.util.List;

import hcmute.entity.User;
import hcmute.entity.UserCourse;

public interface IUserDAO {
	User findUserByID(String id);
	boolean findDuplicateEmail(String email, String userId);
	boolean findDuplicatePhone (String phoneNum, String userId);
	Long countCourseByUserId(String userId);
	List<UserCourse> findAllUserCourseByUserId(String userId);
}
