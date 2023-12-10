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
import hcmute.entity.TopicTest;

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
		String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}
	@Override
	public List<Course> FindCourseIncreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		q.setMaxResults(4);
		return q.getResultList();
	}

	@Override
	public List<Course> FindAllCourseDecreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
		TypedQuery<Course> q = en.createQuery(jpql, Course.class);
		return q.getResultList();
	}
	@Override
	public List<Course> findAll(int page, int pagesize, String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "select c from Course c  WHERE (LOCATE(:searchStr, c.courseName) > 0) ";
		if (tab == 2) {
			jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
		}
		else if (tab == 3) {
			jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
		}
		else if (tab == 4) {
			jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost";
		}
		else if (tab == 5) {
			jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost desc";
		}
		TypedQuery<Course> query = enma.createQuery(jpql, Course.class);
		query.setParameter("searchStr", searchStr);
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		return query.getResultList();
	}
	@Override
	public List<Course> findAll(String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "select c from Course c  WHERE (LOCATE(:searchStr, c.courseName) > 0)";
		if (tab == 2) {
			jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
		}
		else if (tab == 3) {
			jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
		}
		else if (tab == 4) {
			jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost";
		}
		else if (tab == 5) {
			jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost desc";
		}
		TypedQuery<Course> query = enma.createQuery(jpql, Course.class);
		query.setParameter("searchStr", searchStr);
		return query.getResultList();
	}
}
