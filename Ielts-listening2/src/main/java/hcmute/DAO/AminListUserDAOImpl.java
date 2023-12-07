package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.User;

public class AminListUserDAOImpl implements IAdminListUserDAO{

	@Override
	public List<User> findAllUser() {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select c from User c ";
		TypedQuery<User> q = en.createQuery(jpql, User.class);
		return q.getResultList();
	}

	@Override
	public User findUserById(String userId) {
		EntityManager enma = JPAConfig.getEntityManager();
		User user = enma.find(User.class, userId);
		return user;
	}

}
