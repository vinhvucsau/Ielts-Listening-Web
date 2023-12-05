package hcmute.services;

import java.util.List;

import hcmute.entity.Lesson;

public interface ILessonService {
	List<Lesson> findByCourseId(String courseId);
}
