package hcmute.DAO;

import java.time.LocalDateTime;
import java.util.List;

import hcmute.entity.PayDetail;
import hcmute.entity.Payment;

public interface IPaymentDAO {
	Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId);

	List<Payment> findcoursesByIDPayment(String id);


}
