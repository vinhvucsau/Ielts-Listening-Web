package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.PayDetail;
import hcmute.entity.Payment;

public class PayDetailDAOImpl extends AbstractDao<PayDetail> implements IPayDetailDAO {
	
	public PayDetailDAOImpl() {
		super(PayDetail.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	public List<PayDetail> findPayDetailByIDPayment(String idpay) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM PayDetail p WHERE p.payment.paymentId = :idpay";
		TypedQuery<PayDetail> query = entityManager.createQuery(jpql, PayDetail.class);
		query.setParameter("idpay", idpay); 
		return query.getResultList();
	}
	

//	public static void main(String[] args) {
//		IPayDetailDAO proDAO = new PayDetailDAOImpl();
//		List<PayDetail> list = proDAO.findPayDetailByIDPayment("Payment1074");
//		System.out.print(list);
//	}
}
