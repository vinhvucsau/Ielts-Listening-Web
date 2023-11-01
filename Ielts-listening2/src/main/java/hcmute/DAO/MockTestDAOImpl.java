package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.MockTest;

public class MockTestDAOImpl extends AbstractDao<MockTest> implements IMockTestDAO {

	public MockTestDAOImpl() {
		super(MockTest.class);
	}

	@Override
	public List<MockTest> getAllMockTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select m from MockTest m";
		TypedQuery<MockTest> q = en.createQuery(jpql, MockTest.class);
		return q.getResultList();
	}
}
