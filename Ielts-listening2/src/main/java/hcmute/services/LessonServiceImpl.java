package hcmute.services;

import java.util.List;

import hcmute.DAO.AbstractDao;
import hcmute.DAO.ILessonDAO;
import hcmute.DAO.LessonDAOImpl;
import hcmute.entity.Lesson;

public class LessonServiceImpl implements ILessonService {
	ILessonDAO lessonDAO = new LessonDAOImpl();

	@Override
	public List<Lesson> findByCourseId(String courseId) {
		return lessonDAO.findByCourseId(courseId);
	}

}
