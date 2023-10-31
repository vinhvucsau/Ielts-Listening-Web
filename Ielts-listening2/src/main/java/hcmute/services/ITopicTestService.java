package hcmute.services;

import java.util.List;

import hcmute.entity.TopicTest;

public interface ITopicTestService {
	List<TopicTest> findAll(String searchStr);
	List<TopicTest> findAll(int page, int pagesize, String searchStr);
	List<TopicTest> getAllTopicTest();
}
