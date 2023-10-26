package hcmute.services.Lesson;

import java.util.List;

import hcmute.DAO.Lesson.ILessonDAO;
import hcmute.DAO.Lesson.LessonDAOImpl;
import hcmute.entity.Lesson;

public class LessonServiceImpl implements ILessonService{

	ILessonDAO lessonDAO = new LessonDAOImpl();
	@Override
	public List<Lesson> getAllLesson() {
		return lessonDAO.getAllLesson();
	}

	@Override
	public List<Lesson> getLesson_ByCouseID(String couseID) {
		return lessonDAO.getLesson_ByCouseID(couseID);
	}

}
