package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Lesson;

public class LessonDAOImpl extends AbstractDao<Lesson> implements IAdminLessonDAO {

	public LessonDAOImpl() {
		super(Lesson.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Lesson> findLessonByCourse(String courseId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT l FROM Lesson l WHERE l.courses.courseId = :courseId";
			TypedQuery<Lesson> query = entityManager.createQuery(jpql, Lesson.class);
			query.setParameter("courseId", courseId);
			return query.getResultList();
		} catch (Exception e) {
			// Handle your exception (log, rethrow, etc.)
			e.printStackTrace(); // replace with proper logging
			return null; // or throw a custom exception, return an empty list, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

}
