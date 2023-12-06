package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.EnrrolLesson;

public class EnrollLessonDao extends AbstractDao<EnrrolLesson> implements IEnrollLessonDao {

	public EnrollLessonDao() {
		super(EnrrolLesson.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public EnrrolLesson findOneByUser_Lesson(String userId, String lessId) {
		EntityManager enma = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT e FROM EnrrolLesson e WHERE e.users.userId = :userId AND e.lessons.lessonId = :lessId";
			TypedQuery<EnrrolLesson> query = enma.createQuery(jpql, EnrrolLesson.class);
			query.setParameter("userId", userId);
			query.setParameter("lessId", lessId);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		} finally {
			enma.close();
		}
		
	}

}
