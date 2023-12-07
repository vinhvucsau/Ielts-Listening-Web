package hcmute.services;

import hcmute.DAO.PayDetailDAOImpl;
import hcmute.entity.PayDetail;

public class PayDetailServiceImpl implements IPayDetailService {
	PayDetailDAOImpl payDetailAbs = new PayDetailDAOImpl();

	@Override
	public void insert(PayDetail payDetail) {
		payDetailAbs.insert(payDetail);
	}

}
