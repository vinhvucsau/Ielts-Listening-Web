package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl extends AbstractDao<TopicTest> implements ITopicTestDAO {

	public TopicTestDAOImpl() {
		super(TopicTest.class);
		
	}
	@Override
	public List<TopicTest> getAllTopicTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "Select t From TopicTest t";
		TypedQuery<TopicTest> q = en.createQuery(jpql, TopicTest.class);
		return q.getResultList();
	}

}
