package hcmute.DAO;

import java.util.List;

import hcmute.entity.EnrrolLesson;

public interface IEnrolLessonDAO {
	EnrrolLesson findByUserIdAndLessonId(String UserId, String LessonId);
}
