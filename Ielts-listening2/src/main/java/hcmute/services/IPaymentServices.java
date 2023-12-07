package hcmute.services;

import java.util.List;

import hcmute.entity.Payment;

public interface IPaymentServices {

	List<Payment> findAll();
	
}
