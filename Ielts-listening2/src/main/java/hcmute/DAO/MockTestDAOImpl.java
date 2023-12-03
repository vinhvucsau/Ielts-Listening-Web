package hcmute.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;


public class MockTestDAOImpl extends AbstractDao<MockTest> implements IMockTestDAO {

	public MockTestDAOImpl() {
		super(MockTest.class);
		// TODO Auto-generated constructor stub
	}


	
}
