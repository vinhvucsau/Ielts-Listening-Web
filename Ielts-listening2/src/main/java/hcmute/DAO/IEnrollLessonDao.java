package hcmute.DAO;

import hcmute.entity.EnrrolLesson;

public interface IEnrollLessonDao {
	EnrrolLesson findOneByUser_Lesson(String userId, String lessId);
}
