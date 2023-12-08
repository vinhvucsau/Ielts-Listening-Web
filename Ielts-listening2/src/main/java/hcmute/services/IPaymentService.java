package hcmute.services;

import java.time.LocalDateTime;
import java.util.List;

import hcmute.entity.Payment;

public interface IPaymentService {
	void insert(Payment payment);

	List<Payment> findAll();

	Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId);
}
