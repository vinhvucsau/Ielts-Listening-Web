package hcmute.DAO;

import java.util.List;

<<<<<<< HEAD
=======
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
>>>>>>> dev
import hcmute.entity.MockTest;

public class MockTestDAOImpl implements IMockTestDAO {

<<<<<<< HEAD
=======
	@Override
	public List<MockTest> getAllMockTest() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select m from MockTest m";
		TypedQuery<MockTest> q = en.createQuery(jpql, MockTest.class);
		return q.getResultList();
	}
>>>>>>> dev

}
