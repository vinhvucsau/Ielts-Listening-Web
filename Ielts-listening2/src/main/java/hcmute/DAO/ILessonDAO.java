package hcmute.DAO;

import java.util.List;

import hcmute.entity.Lesson;

public interface ILessonDAO {
	List<Lesson> findByCourseId(String courseId);
}
