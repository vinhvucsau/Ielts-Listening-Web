package hcmute.DAO.Lesson;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.transaction.TransactionManager;

import JPAConfig.JPAConfig;
import hcmute.entity.Lesson;

public class LessonDAOImpl implements ILessonDAO {

	@Override
	public List<Lesson> getAllLesson() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "Select l from Lesson l";
		TypedQuery<Lesson> q = enma.createQuery(jpql, Lesson.class);
		return q.getResultList();
	}

	@Override
	public List<Lesson> getLesson_ByCouseID(String couseID) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "Select l From Lesson l Where l.courseId = :courseID";
		TypedQuery<Lesson> q= enma.createNamedQuery(jpql, Lesson.class);
		q.setParameter(1, couseID);
		return q.getResultList();
	}

}
