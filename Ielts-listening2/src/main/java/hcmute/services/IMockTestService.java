package hcmute.services;

import java.util.List;

import hcmute.entity.MockTest;

public interface IMockTestService {
	List <MockTest> getAllMockTest();
	void insert(MockTest mockTest);
	void update(MockTest mockTest);
	void delete(MockTest mockTest);
	MockTest findById(String testId);
	Long countAll();
	List<MockTest> findAll();
	List<MockTest> findAll(boolean all, int firstResult, int maxResult);
}
