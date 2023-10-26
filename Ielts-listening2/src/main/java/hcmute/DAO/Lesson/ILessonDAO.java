package hcmute.DAO.Lesson;

import java.util.List;

import hcmute.entity.Lesson;

public interface ILessonDAO {
	List<Lesson> getAllLesson();
	List<Lesson> getLesson_ByCouseID(String couseID);
}
