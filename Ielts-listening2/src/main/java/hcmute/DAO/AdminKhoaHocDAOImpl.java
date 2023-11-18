package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder.In;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;

public class AdminKhoaHocDAOImpl implements IAdminKhoaHocDAO {

	@Override
	public Long countKhoaHoc() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT COUNT(c) FROM Course c";
		Query query = enma.createQuery(jpql);
		Long count = (Long) query.getSingleResult();
		return count;
	}

	@Override
	public List<Course> FindAllCourse() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select c from Course c ";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}


	@Override
	public List<Course> FindAllCourseIncreaseCost() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select c from Course c order by c.cost";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}

	@Override
	public List<Course> FindAllCourseDecreaseCost() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select c from Course c order by c.cost desc";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}

	@Override
	public List<Integer> starCourse(String courseId) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select c from Course c order by c.cost desc";
		TypedQuery<Integer> q = en.createQuery(jpql, Course.class);
		return star;
	}

}
