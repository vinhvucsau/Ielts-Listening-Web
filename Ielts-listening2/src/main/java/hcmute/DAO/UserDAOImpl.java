package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

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

	@Override
	public boolean findDuplicateEmail(String email, String userId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u from User u where u.email = :email and u.userId != :userId";
		TypedQuery<User> query = enma.createQuery(jpql, User.class);
		query.setParameter("email", email);
		query.setParameter("userId", userId);
		if (query.getResultList().size() > 0) {
			return false;
		}
		return true;
	}

	@Override
	public boolean findDuplicatePhone(String phoneNum, String userId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u from User u where u.phoneNumber = :phoneNumber and u.userId != :userId";
		TypedQuery<User> query = enma.createQuery(jpql, User.class);
		query.setParameter("phoneNumber", phoneNum);
		query.setParameter("userId", userId);
		if (query.getResultList().size() > 0) {
			return false;
		}
		return true;
	}

}
