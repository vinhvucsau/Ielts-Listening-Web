package hcmute.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.MockTest;

<<<<<<< HEAD
public class MockTestDAOImpl implements IMockTestDAO {
=======
public class MockTestDAOImpl extends AbstractDao<MockTest> implements IMockTestDAO {

	public MockTestDAOImpl() {
		super(MockTest.class);
	}

>>>>>>> 41776508915ab1dce67ded308bce77a02a0286ce
	@Override
	public List<MockTest> getAllMockTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select m from MockTest m";
		TypedQuery<MockTest> q = en.createQuery(jpql, MockTest.class);
		return q.getResultList();
	}
}
