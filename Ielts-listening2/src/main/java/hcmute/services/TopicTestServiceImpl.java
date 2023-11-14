package hcmute.services;

import java.util.List;

import hcmute.DAO.ITopicTestDAO;
import hcmute.DAO.TopicTestDAOImpl;
import hcmute.entity.TopicTest;

public class TopicTestServiceImpl implements ITopicTestService{

	TopicTestDAOImpl topicDAO = new TopicTestDAOImpl();


	@Override
	public List<TopicTest> getAllTopicTest() {
		// TODO Auto-generated method stub
		return topicDAO.findAll();
	}

	@Override
	public TopicTest getOneTopicTest(String topicID) {
		return topicDAO.findById(topicID);
	}

	@Override
	public void addTopic(TopicTest topic) {
		topicDAO.insert(topic);;
	}
	@Override
	public void addTopic(TopicTest topic) {
		topicDAO.addTopic(topic);
	}

	@Override
	public void deleteTopic(String topicID) throws Exception {
		topicDAO.delete(topicID);
	}

	@Override
	public void updateTopic(TopicTest newTopicID) throws Exception {
		topicDAO.update(newTopicID);
	}


}
