package hcmute.services;

import java.util.List;

import hcmute.DAO.IPaymentDao;
import hcmute.DAO.PaymentDaoImpl;
import hcmute.entity.Payment;

public class PaymentServicesImpl implements IPaymentServices{
	IPaymentDao PayDao = new PaymentDaoImpl();
	@Override
	public List<Payment> findAll() {
		return PayDao.findAll();
	}
}
