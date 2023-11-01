package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.ListeningPart;
import hcmute.entity.TopicTest;

public class ListeningPartDao extends AbstractDao<ListeningPart> {

	public ListeningPartDao() {
		super(ListeningPart.class);
	}
	public List<ListeningPart> findByMockTestId(String mockTestId){
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "Select l From ListeningPart l Where l.mockTests.testId = :mockTestId ";
		TypedQuery<ListeningPart> query = enma.createQuery(jpql, ListeningPart.class);
		query.setParameter("mockTestId", mockTestId);
		return query.getResultList();
	}
}
