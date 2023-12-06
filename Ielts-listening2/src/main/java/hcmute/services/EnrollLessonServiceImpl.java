package hcmute.services;

import hcmute.DAO.EnrolLessonImpl;
import hcmute.DAO.IEnrolLessonDAO;
import hcmute.entity.EnrrolLesson;

public class EnrollLessonServiceImpl implements IEnrollLessonService {
	IEnrolLessonDAO enrollLessonDAO = new EnrolLessonImpl();
	@Override
	public EnrrolLesson findByUserIdAndLessonId(String UserId, String LessonId) {
		// TODO Auto-generated method stub
		return enrollLessonDAO.findByUserIdAndLessonId(UserId, LessonId);
	}
}
