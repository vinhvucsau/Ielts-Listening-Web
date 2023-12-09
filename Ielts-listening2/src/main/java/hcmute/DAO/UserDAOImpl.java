package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;
import hcmute.entity.User;
import hcmute.entity.UserCourse;

public class UserDAOImpl extends AbstractDao<User> implements IUserDAO {

	public UserDAOImpl() {
		super(User.class);
		// TODO Auto-generated constructor stub
	}

	public User findUserByID(String id) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			User user = entityManager.find(User.class, id);
			return user;
		} catch (Exception e) {
			// Handle your exception (log, rethrow, etc.)
			e.printStackTrace(); // replace with proper logging
			return null; // or throw a custom exception, return a default value, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	@Override
	public boolean findDuplicateEmail(String email, String userId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT u FROM User u WHERE u.email = :email AND u.userId != :userId";
			TypedQuery<User> query = entityManager.createQuery(jpql, User.class);
			query.setParameter("email", email);
			query.setParameter("userId", userId);
			return query.getResultList().isEmpty();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	@Override
	public boolean findDuplicatePhone(String phoneNum, String userId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT u FROM User u WHERE u.phoneNumber = :phoneNumber AND u.userId != :userId";
			TypedQuery<User> query = entityManager.createQuery(jpql, User.class);
			query.setParameter("phoneNumber", phoneNum);
			query.setParameter("userId", userId);
			return query.getResultList().isEmpty();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	@Override
	public Long countCourseByUserId(String userId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT COUNT(uc) FROM UserCourse uc WHERE uc.users.userId = :userId";
			Query query = entityManager.createQuery(jpql);
			query.setParameter("userId", userId);
			return (Long) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return 0L; // or throw a custom exception, return a default value, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

	@Override
	public List<UserCourse> findAllUserCourseByUserId(String userId) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		try {
			String jpql = "SELECT uc FROM UserCourse uc WHERE uc.users.userId = :userId";
			TypedQuery<UserCourse> query = entityManager.createQuery(jpql, UserCourse.class);
			query.setParameter("userId", userId);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null; // or throw a custom exception, return an empty list, etc.
		} finally {
			if (entityManager != null && entityManager.isOpen()) {
				entityManager.close();
			}
		}
	}

}
