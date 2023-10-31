package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl implements ITopicTestDAO {

	@Override
	public List<TopicTest> getAllTopicTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "Select t From TopicTest t";
		TypedQuery<TopicTest> q = en.createQuery(jpql, TopicTest.class);
		return q.getResultList();
	}

	@Override
	public void addTopic(TopicTest topic) {
		EntityManager enma = JPAConfig.getEntityManager();

		EntityTransaction trans = enma.getTransaction();

		try {

			trans.begin();

			enma.persist(topic);

			trans.commit();

		} catch (Exception e) {

			e.printStackTrace();

			trans.rollback();

			throw e;

		} finally {

			enma.close();

		}
		
	}

}
