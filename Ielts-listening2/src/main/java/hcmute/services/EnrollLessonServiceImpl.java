package hcmute.services;

import java.util.List;

import hcmute.DAO.EnrolLessonImpl;
import hcmute.DAO.IEnrolLessonDAO;
import hcmute.entity.EnrrolLesson;

public class EnrollLessonServiceImpl implements IEnrollLessonService {
	IEnrolLessonDAO enrollLessonDAO = new EnrolLessonImpl();
	EnrolLessonImpl enDao = new EnrolLessonImpl();

	@Override
	public List<EnrrolLesson> findAll() {
		// TODO Auto-generated method stub
		return enDao.findAll();
	}

	@Override
	public EnrrolLesson findOneById(String enrLessonId) {
		// TODO Auto-generated method stub
		return enDao.findById(enrLessonId);
	}

	@Override
	public void update(EnrrolLesson model) {
		// TODO Auto-generated method stub
		enDao.update(model);
	}

	@Override
	public void delete(String enLessId) throws Exception {

		enDao.delete(enLessId);
	}

	@Override
	public void insert(EnrrolLesson model) {
		// TODO Auto-generated method stub
		enDao.insert(model);
	}

	@Override
	public EnrrolLesson findOneByUser_Lesson(String userId, String lessId) {
		// TODO Auto-generated method stub
		return enrollLessonDAO.findOneByUser_Lesson(userId, lessId);
	}

	@Override
	public EnrrolLesson findByUserIdAndLessonId(String UserId, String LessonId) {
		// TODO Auto-generated method stub
		return enrollLessonDAO.findByUserIdAndLessonId(UserId, LessonId);
	}
}
