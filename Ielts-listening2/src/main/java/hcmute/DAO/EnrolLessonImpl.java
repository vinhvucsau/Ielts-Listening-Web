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

}
