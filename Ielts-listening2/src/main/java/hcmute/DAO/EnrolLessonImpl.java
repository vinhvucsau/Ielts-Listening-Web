package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.EnrrolLesson;

public class EnrolLessonImpl extends AbstractDao<EnrrolLesson> implements IEnrolLessonDAO {

	public EnrolLessonImpl() {
		super(EnrrolLesson.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public EnrrolLesson findByUserIdAndLessonId(String userId, String lessonId) {
		EntityManager enma = JPAConfig.getEntityManager();
		System.out.println(userId + " " + lessonId);
		String jpql = "SELECT el FROM EnrrolLesson el WHERE el.users.userId = :userId AND el.lessons.lessonId = :lessonId";

		TypedQuery<EnrrolLesson> query = enma.createQuery(jpql, EnrrolLesson.class);
		query.setParameter("userId", userId);
		query.setParameter("lessonId", lessonId);
		List<EnrrolLesson> list = query.getResultList();
		if (list.size() == 0)
			return null;
		return query.getSingleResult();
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
