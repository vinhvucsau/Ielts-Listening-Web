package hcmute.services;

import java.util.List;

import hcmute.DAO.ITopicTestDAO;
import hcmute.DAO.TopicTestDAOImpl;
import hcmute.entity.TopicTest;

public class TopicTestServiceImpl implements ITopicTestService{
<<<<<<< HEAD
	ITopicTestDAO topicTestDAO = new TopicTestDAOImpl();
	IMockTestService mockTestService = new MockTestServiceImpl();
	@Override
	public List<TopicTest> findAll(String searchStr) {
		return topicTestDAO.findAll(searchStr);
	}
	@Override
	public List<TopicTest> findAll(int page, int pagesize, String searchStr) {
		return topicTestDAO.findAll(page, pagesize, searchStr);
	}
=======

	ITopicTestDAO topicDAO = new TopicTestDAOImpl();
	@Override
	public List<TopicTest> getAllTopicTest() {
		return topicDAO.getAllTopicTest();
	}

>>>>>>> dev
}
