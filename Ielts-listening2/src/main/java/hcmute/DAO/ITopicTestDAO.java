package hcmute.DAO;

import java.util.List;
import hcmute.entity.TopicTest;

public interface ITopicTestDAO {
	List<TopicTest> findAll(String searchStr);
	List<TopicTest> findAll(int page, int pagesize, String searchStr);
}
