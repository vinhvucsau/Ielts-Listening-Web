package hcmute.services;

import java.util.List;

import hcmute.DAO.EnrollLessonDao;
import hcmute.DAO.IEnrollLessonDao;
import hcmute.entity.EnrrolLesson;

public class EnrollLessonService implements IEnrollLessonService{

	IEnrollLessonDao IenDao = new EnrollLessonDao();
	EnrollLessonDao enDao = new EnrollLessonDao();
	
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
		return IenDao.findOneByUser_Lesson(userId, lessId);
	}

}
