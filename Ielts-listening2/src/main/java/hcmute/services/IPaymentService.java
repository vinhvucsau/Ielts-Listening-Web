package hcmute.services;

import java.time.LocalDateTime;

import hcmute.entity.Payment;

public interface IPaymentService {
	void insert(Payment payment);

	Payment findByDatebuyAndUserId(LocalDateTime dateBuy, String userId);
}
