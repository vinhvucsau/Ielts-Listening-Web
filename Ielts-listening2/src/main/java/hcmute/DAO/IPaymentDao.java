package hcmute.DAO;

import java.util.List;

import hcmute.entity.Payment;

public interface IPaymentDao {


	List<Payment> findAll();
}
