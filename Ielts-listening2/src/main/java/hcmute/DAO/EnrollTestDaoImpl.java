package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.EnrrolTest;



public class EnrollTestDaoImpl extends AbstractDao<EnrrolTest> implements IEnrollTestDAO{

	public EnrollTestDaoImpl() {
		super(EnrrolTest.class);
	}

	@Override
	public List<EnrrolTest> getEnrollTestByUserId(String userId) {
		EntityManager en = JPAConfig.getEntityManager();
        String jpql ="SELECT e " +
                "FROM ENRROL_TEST e " +
                "WHERE e.users.userId = :userId";
        TypedQuery<EnrrolTest> q = en.createQuery(jpql, EnrrolTest.class);
        q.setParameter("userId", userId);
        return q.getResultList();
	}
	
}
