package hcmute.DAO;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Payment;
import hcmute.entity.User;

public class PaymentDAOImpl extends AbstractDao<Payment> implements IPaymentDAO {

	public PaymentDAOImpl() {
		super(Payment.class);
		// TODO Auto-generated constructor stub
	}

	public Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT p FROM Payment p WHERE p.dateBuy = :dateBuy AND p.users.userId = :userId";

			TypedQuery<Payment> query = entityManager.createQuery(jpql, Payment.class);
			query.setParameter("dateBuy", dateBuy);
			query.setParameter("userId", userId);

			List<Payment> resultList = query.getResultList();

			return resultList.isEmpty() ? null : resultList.get(0);
		} catch (Exception e) {
			// Handle your exception (log, rethrow, etc.)
			e.printStackTrace(); // replace with proper logging
			return null; // or throw a custom exception, return a default value, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}
}
