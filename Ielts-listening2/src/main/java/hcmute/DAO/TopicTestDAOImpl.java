package hcmute.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl implements ITopicTestDAO {

	@Override
	public List<TopicTest> findAll(String searchStr) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M WHERE (LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)";
		TypedQuery<TopicTest> query = enma.createQuery(jpql, TopicTest.class);
		query.setParameter("searchStr", searchStr);
		return query.getResultList();
	}
	public List<TopicTest> findAll(int page, int pagesize, String searchStr) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT DISTINCT T FROM TopicTest T LEFT JOIN T.mockTests M WHERE (LOCATE(:searchStr, M.testName) > 0) OR (LOCATE(:searchStr, T.topicName) > 0)";
		TypedQuery<TopicTest> query = enma.createQuery(jpql, TopicTest.class);
		query.setParameter("searchStr", searchStr);
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		return query.getResultList();
	}

}
