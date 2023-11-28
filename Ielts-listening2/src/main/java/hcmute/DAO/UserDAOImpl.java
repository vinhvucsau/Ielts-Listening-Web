package hcmute.DAO;

import javax.persistence.EntityManager;

import JPAConfig.JPAConfig;
import hcmute.entity.User;

public class UserDAOImpl extends AbstractDao<User> implements IUserDAO{

	public UserDAOImpl() {
		super(User.class);
		// TODO Auto-generated constructor stub
	}

	public User findUserByID(String id) {
		EntityManager enma = JPAConfig.getEntityManager();
		User user = enma.find(User.class, id);
		return user;
	}

}
