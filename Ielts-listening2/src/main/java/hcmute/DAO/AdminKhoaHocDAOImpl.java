package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.AnswerTest;
import hcmute.entity.Course;
import hcmute.entity.MockTest;

public class AdminKhoaHocDAOImpl extends AbstractDao<Course> implements IAdminKhoaHocDAO {
	
	public AdminKhoaHocDAOImpl() {
		super(Course.class);
	}

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
	public void deleteCourse(String courseId) throws Exception {
		EntityManager enma = JPAConfig.getEntityManager();

		EntityTransaction trans = enma.getTransaction();

		try {
			trans.begin();
			Course course = enma.find(Course.class, courseId);
			if (course != null) {
				enma.remove(course);
			} else {
				throw new Exception("Không tìm thấy");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
	}

	@Override
	public List<Course> FindAllCourseIncreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT c FROM Course c JOIN c.lessons l JOIN l.enrrolLesson e GROUP BY c ORDER BY AVG(e.numberOfStar)";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}

	@Override
	public List<Course> FindAllCourseDecreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT c FROM Course c JOIN c.lessons l JOIN l.enrrolLesson e group by c ORDER BY AVG(e.numberOfStar) DESC";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}
}
