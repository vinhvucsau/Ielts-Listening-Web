package hcmute.services;

import hcmute.entity.EnrrolLesson;

public interface IEnrollLessonService {
	EnrrolLesson findByUserIdAndLessonId(String UserId, String LessonId);
}
