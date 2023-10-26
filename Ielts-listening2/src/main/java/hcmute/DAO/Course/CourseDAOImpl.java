package hcmute.DAO.Course;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;

public class CourseDAOImpl implements ICourseDAO {

	@Override
	public List<Course> getAllCourses() {
		EntityManager entityManager = JPAConfig.getEntityManager();
		String jpql = "SELECT c FROM Course c"; 
		TypedQuery<Course> query = entityManager.createQuery(jpql, Course.class);
		return query.getResultList();
	}

}
