package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import JPAConfig.JPAConfig;
import hcmute.entity.Account;
import hcmute.entity.User;

public class UserDAOImpl implements IUserDAO {

	@Override
	public User findUserByID(String id) {
		EntityManager enma = JPAConfig.getEntityManager();
		User user = enma.find(User.class, id);
		return user;
	}

}
