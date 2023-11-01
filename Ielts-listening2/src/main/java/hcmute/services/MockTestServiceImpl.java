package hcmute.services;

import java.util.List;

import hcmute.DAO.IMockTestDAO;
import hcmute.DAO.MockTestDAOImpl;
import hcmute.entity.MockTest;

public class MockTestServiceImpl implements IMockTestService {
<<<<<<< HEAD
	IMockTestDAO mockTestDAO = new MockTestDAOImpl();
	IMockTestDAO mockDAO = new MockTestDAOImpl();
=======

	MockTestDAOImpl mockDao = new MockTestDAOImpl();
>>>>>>> 41776508915ab1dce67ded308bce77a02a0286ce
	@Override
	public List<MockTest> getAllMockTest() {
		return mockDao.getAllMockTest();
	}
	@Override
	public void insert(MockTest mockTest) {
		mockDao.insert(mockTest);
	}
	@Override
	public void update(MockTest mockTest) {
		mockDao.update(mockTest);
	}
	@Override
	public void delete(MockTest mockTest) {
		mockDao.delete(mockTest);
	}
	@Override
	public MockTest findById(String testId) {
		return mockDao.findById(testId);
	}
	@Override
	public Long countAll() {
		return mockDao.countAll();
	}
	@Override
	public List<MockTest> findAll() {
		return mockDao.findAll();
	}
	@Override
	public List<MockTest> findAll(boolean all, int firstResult, int maxResult) {
		return mockDao.findAll(all,firstResult,maxResult);
	}
}
