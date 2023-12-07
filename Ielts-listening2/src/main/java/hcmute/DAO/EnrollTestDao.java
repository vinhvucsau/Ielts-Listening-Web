package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.EnrrolTest;

public class EnrollTestDao extends AbstractDao<EnrrolTest>{

	public EnrollTestDao() {
		super(EnrrolTest.class);
	}
	
	public List<EnrrolTest> findByUserIdAndMockTestId(String userId, String mockTestId) {
		String jpql = "Select enrollTest from EnrrolTest enrollTest where enrollTest.users.userId = :userId and "
				+ "enrollTest.mockTests.testId = :mockTestId";
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<EnrrolTest> query = enma.createQuery(jpql,EnrrolTest.class);
		query.setParameter("userId", userId);
		query.setParameter("mockTestId", mockTestId);
		return query.getResultList();
	}
}
