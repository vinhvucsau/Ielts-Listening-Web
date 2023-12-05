package hcmute.services;

import java.util.List;

import hcmute.entity.Lesson;

public interface IAdminLessonService {
	void insert(Lesson Lesson);
	void update(Lesson Lesson);
	void delete(Object Lesson) throws Exception;
	Lesson findById(String testId);
	Long countAll();
	List<Lesson> findAll();
	List<Lesson> findAll(boolean all, int firstResult, int maxResult);
	List<Lesson> findLessonByCourse(String courseid);
}
