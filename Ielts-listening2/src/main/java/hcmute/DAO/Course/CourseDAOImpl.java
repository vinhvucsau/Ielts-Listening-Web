package hcmute.DAO.Course;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;
import hcmute.utils.Constants;

public class CourseDAOImpl implements ICourseDAO{

	@Override
	public List<Course> getAllCourses() {
		EntityManager enma = JPAConfig.getEntityManager();
		String name = Constants.COURSE_RELATION;
		String jpql = "SELECT c FROM COURSE c";
		TypedQuery<Course> q = enma.createQuery("SELECT c FROM COURSE c", Course.class);
		return q.getResultList();
	}

}
