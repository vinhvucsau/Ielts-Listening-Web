package hcmute.services;

import java.util.List;

import hcmute.DAO.AdminLessonDAOimpl;
import hcmute.entity.Lesson;

public class AdminLessonServiceimpl implements IAdminLessonService{
	AdminLessonDAOimpl lessonDao = new AdminLessonDAOimpl();

	public void insert(Lesson entity) {
		lessonDao.insert(entity);
	}

	public void update(Lesson entity) {
		lessonDao.update(entity);
	}

	public void delete(Object id) throws Exception {
		lessonDao.delete(id);
	}

	public Lesson findById(Object id) {
		return lessonDao.findById(id);
	}

	public Long countAll() {
		return lessonDao.countAll();
	}

	public List<Lesson> findAll() {
		return lessonDao.findAll();
	}

	public List<Lesson> findAll(boolean all, int firstResult, int maxResult) {
		return lessonDao.findAll(all, firstResult, maxResult);
	}

	@Override
	public Lesson findById(String testId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Lesson> findLessonByCourse(String courseid) {
		// TODO Auto-generated method stub
		return lessonDao.findLessonByCourse(courseid);
	}
	
	
}
