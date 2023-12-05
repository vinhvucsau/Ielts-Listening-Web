package hcmute.DAO;

import java.util.List;

import hcmute.entity.Lesson;

public interface IAdminLessonDAO {
	List<Lesson> findLessonByCourse(String courseid);
}
