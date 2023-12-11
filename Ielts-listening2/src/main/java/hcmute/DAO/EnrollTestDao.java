package hcmute.DAO;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.hibernate.Hibernate;

import JPAConfig.JPAConfig;
import hcmute.entity.EnrrolTest;

public class EnrollTestDao extends AbstractDao<EnrrolTest>{

	public EnrollTestDao() {
		super(EnrrolTest.class);
	}
	
	public List<EnrrolTest> findByUserIdAndMockTestId(String userId, String mockTestId) {
	    String jpql = "Select enrollTest from EnrrolTest enrollTest where enrollTest.users.userId = :userId and " +
	            "enrollTest.mockTests.testId = :mockTestId";
	    EntityManager enma = JPAConfig.getEntityManager();
	    try {
	        TypedQuery<EnrrolTest> query = enma.createQuery(jpql, EnrrolTest.class);
	        query.setParameter("userId", userId);
	        query.setParameter("mockTestId", mockTestId);
	        return query.getResultList();
	    } finally {
	        if (enma != null) {
	            enma.close();
	        }
	    }
	}
	public List<EnrrolTest> findByMockTestId( String mockTestId) {
	    String jpql = "Select enrollTest from EnrrolTest enrollTest where  " +
	            "enrollTest.mockTests.testId = :mockTestId";
	    EntityManager enma = JPAConfig.getEntityManager();
	    try {
	        TypedQuery<EnrrolTest> query = enma.createQuery(jpql, EnrrolTest.class);
	        
	        query.setParameter("mockTestId", mockTestId);
	        return query.getResultList();
	    } finally {
	        if (enma != null) {
	            enma.close();
	        }
	    }
	}
	public EnrrolTest findByUserIdAndMockTestIdAndDate(String userId, String mockTestId, LocalDateTime date) {
		String jpql = "Select enrollTest from EnrrolTest enrollTest where enrollTest.users.userId = :userId and "
				+ "enrollTest.mockTests.testId = :mockTestId and enrollTest.enrrollmentDate = :date";
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<EnrrolTest> query = enma.createQuery(jpql,EnrrolTest.class);
		query.setParameter("userId", userId);
		query.setParameter("mockTestId", mockTestId);
		query.setParameter("date", date);
		return query.getSingleResult();
	}
	
	public EnrrolTest findByIdContainAnsTestAndAnswerUser(String enrollTestId) {
		EntityManager enma = JPAConfig.getEntityManager();
		try {
			EnrrolTest enrollTest = enma.find(EnrrolTest.class, enrollTestId);
			if(enrollTest != null) {
				enrollTest.getAnswerUsers().size();
				enrollTest.getMockTests().getListeningParts().size();
			}
			return enrollTest;
		} finally {
			enma.close();
		}
	}
	
}
