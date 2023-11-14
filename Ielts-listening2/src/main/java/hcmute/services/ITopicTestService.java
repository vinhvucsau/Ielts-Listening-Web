package hcmute.services;

import java.util.List;

import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;

public interface ITopicTestService {
	List<TopicTest> getAllTopicTest();
	TopicTest getOneTopicTest(String topicID);
	void addTopic(TopicTest topic);
	void deleteTopic(String topicID) throws Exception;
	void updateTopic(TopicTest newTopicID) throws Exception;
	
}
