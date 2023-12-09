package hcmute.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl extends AbstractDao<TopicTest> implements ITopicTestDAO {

	public TopicTestDAOImpl() {
		super(TopicTest.class);
	}

	// TODO Auto-generated constructor stub
	@Override
	public List<TopicTest> findAll(String searchStr, int tab) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0))";
			if (tab == 2) {
				jpql += " ORDER BY T.createTime DESC";
			} else if (tab == 3) {
				jpql = "SELECT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)) GROUP BY T.topicId ORDER BY COUNT(E) DESC";
			}
			TypedQuery<TopicTest> query = entityManager.createQuery(jpql, TopicTest.class);
			query.setParameter("searchStr", searchStr);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	public List<TopicTest> findAll(int page, int pagesize, String searchStr, int tab) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0))";
			if (tab == 2) {
				jpql += " ORDER BY T.createTime DESC";
			} else if (tab == 3) {
				jpql = "SELECT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)) GROUP BY T.topicId ORDER BY COUNT(E) DESC";
			}
			TypedQuery<TopicTest> query = entityManager.createQuery(jpql, TopicTest.class);
			query.setParameter("searchStr", searchStr);
			query.setFirstResult(page * pagesize);
			query.setMaxResults(pagesize);
			return query.getResultList();
		} catch (Exception e) {
			// Handle your exception (log, rethrow, etc.)
			e.printStackTrace(); // replace with proper logging
			return null; // or throw a custom exception, return an empty list, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	public List<TopicTest> getAllTopicTest() {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT t FROM TopicTest t";
			TypedQuery<TopicTest> query = entityManager.createQuery(jpql, TopicTest.class);
			System.out.println(query.getResultList());
			return query.getResultList();
		} catch (Exception e) {
			// Handle your exception (log, rethrow, etc.)
			e.printStackTrace(); // replace with proper logging
			return null; // or throw a custom exception, return an empty list, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

}
