package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

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
		String jpql = "select c from Course c";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}

	@Override
	public Long starKhoaHoc(String courseIds) {
	    EntityManager enma = JPAConfig.getEntityManager();
	    String jpql = "SELECT ec.numberOfStart FROM EnrrolCourse ec WHERE ec.courses.courseId IN :courseIds";
	    Query query = enma.createQuery(jpql);
	    query.setParameter("courseIds", courseIds); 
		Long star = (Long) query.getSingleResult();
	    return star;
	}


}
