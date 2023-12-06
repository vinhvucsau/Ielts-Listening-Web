package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.UserCourse;

public class UserCourseDAOImpl extends AbstractDao<UserCourse> implements IUserCourseDAO {

	public UserCourseDAOImpl() {
		super(UserCourse.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<UserCourse> findByUserIdAndCourseId(String userId, String courseId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT uc FROM UserCourse uc WHERE uc.users.userId = :userId AND uc.courses.courseId = :courseId";

		TypedQuery<UserCourse> query = enma.createQuery(jpql, UserCourse.class);
		query.setParameter("userId", userId);
		query.setParameter("courseId", courseId);

		return query.getResultList();
	}

}
