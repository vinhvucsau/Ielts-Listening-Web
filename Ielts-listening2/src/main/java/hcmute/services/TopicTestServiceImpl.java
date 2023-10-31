package hcmute.services;

import java.util.List;

import hcmute.DAO.ITopicTestDAO;
import hcmute.DAO.TopicTestDAOImpl;
import hcmute.entity.TopicTest;

public class TopicTestServiceImpl implements ITopicTestService{

	ITopicTestDAO topicDAO = new TopicTestDAOImpl();
	@Override
	public List<TopicTest> getAllTopicTest() {
		return topicDAO.getAllTopicTest();
	}
	@Override
	public void addTopic(TopicTest topic) {
		topicDAO.addTopic(topic);
	}

}
