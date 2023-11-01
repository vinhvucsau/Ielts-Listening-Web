package hcmute.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl implements ITopicTestDAO {
	@Override
	public List<TopicTest> findAll(String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M WHERE (LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)";
		if (tab == 2) {
			jpql += "ORDER BY T.createTime DESC";
		}
		else if (tab == 3) {
			jpql = "SELECT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)) GROUP BY T.topicId ORDER BY COUNT(E) DESC ";
		}
		TypedQuery<TopicTest> query = enma.createQuery(jpql, TopicTest.class);
		query.setParameter("searchStr", searchStr);
		return query.getResultList();
	}
	public List<TopicTest> findAll(int page, int pagesize, String searchStr, int tab) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M WHERE (LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)";
		if (tab == 2) {
			jpql += "ORDER BY T.createTime DESC";
		}
		else if (tab == 3) {
			jpql = "SELECT T FROM TopicTest T LEFT JOIN T.mockTests M LEFT JOIN M.enrrolTests E WHERE ((LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)) GROUP BY T.topicId ORDER BY COUNT(E) DESC ";
		}
		TypedQuery<TopicTest> query = enma.createQuery(jpql, TopicTest.class);
		query.setParameter("searchStr", searchStr);
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		return query.getResultList();
	}
 	public List<TopicTest> getAllTopicTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "Select t From TopicTest t";
		TypedQuery<TopicTest> q = en.createQuery(jpql, TopicTest.class);
		System.out.println(q.getResultList());
		return q.getResultList();
	}
}
