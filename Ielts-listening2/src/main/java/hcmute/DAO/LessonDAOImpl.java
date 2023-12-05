package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Lesson;

public class LessonDAOImpl extends AbstractDao<Lesson> implements ILessonDAO {

	public LessonDAOImpl() {
		super(Lesson.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<Lesson> findByCourseId(String courseId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT l FROM Lesson l WHERE l.courses.courseId = :courseId";
		TypedQuery<Lesson> query = enma.createQuery(jpql, Lesson.class);
		query.setParameter("courseId", courseId);
		return query.getResultList();
	}

}
