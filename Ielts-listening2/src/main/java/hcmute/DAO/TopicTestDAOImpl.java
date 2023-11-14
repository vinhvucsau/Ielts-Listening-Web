package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.TopicTest;

public class TopicTestDAOImpl extends AbstractDao<TopicTest> implements ITopicTestDAO {

	public TopicTestDAOImpl() {
		super(TopicTest.class);
		// TODO Auto-generated constructor stub
	}

	
}
