package hcmute.services;

import java.util.List;

import hcmute.entity.TopicTest;

public interface ITopicTestService {
	List<TopicTest> findAll(String searchStr, int tab);
	List<TopicTest> findAll(int page, int pagesize, String searchStr, int tab);
	List<TopicTest> getAllTopicTest();
}
