package hcmute.services;

import java.util.List;

import hcmute.DAO.IMockTestDAO;
import hcmute.DAO.MockTestDAOImpl;
import hcmute.entity.MockTest;

public class MockTestServiceImpl implements IMockTestService {

	IMockTestDAO mockDAO = new MockTestDAOImpl();
	@Override
	public List<MockTest> getAllMockTest() {
		return mockDAO.getAllMockTest();
	}

}
