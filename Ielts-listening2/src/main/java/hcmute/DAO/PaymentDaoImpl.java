package hcmute.DAO;
import hcmute.entity.Payment;

public class PaymentDaoImpl extends AbstractDao<Payment> implements IPaymentDao{

	public PaymentDaoImpl() {
		super(Payment.class);
	}
}
