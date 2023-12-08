package hcmute.DAO;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;
import hcmute.entity.PayDetail;
import hcmute.entity.Payment;
import hcmute.entity.User;

public class PaymentDAOImpl extends AbstractDao<Payment> implements IPaymentDAO {

	public PaymentDAOImpl() {
		super(Payment.class);
		// TODO Auto-generated constructor stub
	}

	public Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Payment p WHERE p.dateBuy = :dateBuy AND p.users.userId = :userId";

		TypedQuery<Payment> query = enma.createQuery(jpql, Payment.class);
		query.setParameter("dateBuy", dateBuy);
		query.setParameter("userId", userId);

		List<Payment> resultList = query.getResultList();

		return resultList.isEmpty() ? null : resultList.get(0);

	}

	@Override
	public List<Payment> findcoursesByIDPayment(String id) {
		EntityManager entityManager = JPAConfig.getEntityManager();
	    String jpql = "SELECT p FROM Payment p WHERE p.paymentId = :id";
	    TypedQuery<Payment> query = entityManager.createQuery(jpql, Payment.class);
	    query.setParameter("id", id);  // Thiết lập giá trị của tham số
	    return query.getResultList();
	}
	
	public static void main(String[] args)
	{
		IPaymentDAO proDAO = new PaymentDAOImpl();
		List<Payment> list = proDAO.findcoursesByIDPayment("Payment1074");
		System.out.print(list);
	}

	
}
