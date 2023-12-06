package hcmute.services;

import java.util.List;

import hcmute.entity.UserCourse;

public interface IUserCourseService {
	List<UserCourse> findByUserIdAndCourseId(String userId, String courseId);
}
