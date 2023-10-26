package hcmute.services.Lesson;

import java.util.List;

import hcmute.entity.Lesson;

public interface ILessonService {
	List<Lesson> getAllLesson();
	List<Lesson> getLesson_ByCouseID(String couseID);
}
