package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.AnswerTest;
import hcmute.entity.Course;
import hcmute.entity.Lesson;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;

public class AdminKhoaHocDAOImpl extends AbstractDao<Course> implements IAdminKhoaHocDAO {

	public AdminKhoaHocDAOImpl() {
		super(Course.class);
	}

	@Override
	public List<Course> FindAllCourseIncreaseCost() {
		EntityManager en = JPAConfig.getEntityManager();
		TypedQuery<Course> q = null;

		try {
			String jpql = "select c from Course c order by c.cost";
			q = en.createQuery(jpql, Course.class);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}

	@Override
	public List<Course> FindAllCourseDecreaseCost() {
		EntityManager en = JPAConfig.getEntityManager();
		TypedQuery<Course> q = null;

		try {
			String jpql = "select c from Course c order by c.cost desc";
			q = en.createQuery(jpql, Course.class);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
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
		TypedQuery<Course> q = null;

		try {
			String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e " + "GROUP BY c "
					+ "ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
			q = en.createQuery(jpql, Course.class);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}

	@Override
	public List<Course> FindCourseIncreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		TypedQuery<Course> q = null;

		try {
			String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e " + "GROUP BY c "
					+ "ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
			q = en.createQuery(jpql, Course.class);
			q.setMaxResults(4);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}

	@Override
	public List<Course> FindAllCourseDecreaseRate() {
		EntityManager en = JPAConfig.getEntityManager();
		TypedQuery<Course> q = null;

		try {
			String jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e " + "GROUP BY c "
					+ "ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
			q = en.createQuery(jpql, Course.class);
			return q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (en != null && en.isOpen()) {
				en.close();
			}
		}
	}

	@Override
	public List<Course> findAll(int page, int pagesize, String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Course> query = null;

		try {
			String jpql = "select c from Course c  WHERE (LOCATE(:searchStr, c.courseName) > 0) ";
			if (tab == 2) {
				jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
			} else if (tab == 3) {
				jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
			} else if (tab == 4) {
				jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost";
			} else if (tab == 5) {
				jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost desc";
			}
			query = enma.createQuery(jpql, Course.class);
			query.setParameter("searchStr", searchStr);
			query.setFirstResult(page * pagesize);
			query.setMaxResults(pagesize);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (enma != null && enma.isOpen()) {
				enma.close();
			}
		}
	}

	@Override
	public List<Course> findAll(String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Course> query = null;

		try {
			String jpql = "select c from Course c  WHERE (LOCATE(:searchStr, c.courseName) > 0)";
			if (tab == 2) {
				jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END)";
			} else if (tab == 3) {
				jpql = "SELECT c FROM Course c LEFT JOIN c.lessons l LEFT JOIN l.enrrolLesson e WHERE (LOCATE(:searchStr, c.courseName) > 0) GROUP BY c ORDER BY AVG(CASE WHEN e.numberOfStar IS NULL THEN 0 ELSE e.numberOfStar END) DESC";
			} else if (tab == 4) {
				jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost";
			} else if (tab == 5) {
				jpql = "select c from Course c WHERE (LOCATE(:searchStr, c.courseName) > 0) order by c.cost desc";
			}
			query = enma.createQuery(jpql, Course.class);
			query.setParameter("searchStr", searchStr);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (enma != null && enma.isOpen()) {
				enma.close();
			}
		}
	}

}
