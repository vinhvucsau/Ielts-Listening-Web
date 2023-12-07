package hcmute.DAO;

import java.time.LocalDateTime;

import hcmute.entity.Payment;

public interface IPaymentDAO {
	Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId);

}
