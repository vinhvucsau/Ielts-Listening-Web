package hcmute.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Course;
import hcmute.entity.EnrrolLesson;
import hcmute.entity.User;
import hcmute.entity.UserCourse;

public class UserDAOImpl extends AbstractDao<User> implements IUserDAO {

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

	@Override
	public Long countCourseByUserId(String userId) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT COUNT(uc) FROM UserCourse uc WHERE uc.users.userId = :userId";
		Query query = enma.createQuery(jpql);
		query.setParameter("userId", userId);
		Long count = (Long) query.getSingleResult();
		return count;
	}

	@Override
	public List<UserCourse> findAllUserCourseByUserId(String userId) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT uc FROM UserCourse uc WHERE uc.users.userId = :userId";
		TypedQuery<UserCourse> query = en.createQuery(jpql, UserCourse.class);
		query.setParameter("userId", userId);
		return query.getResultList();
	}

	@Override
	public List<Double> findAllEnrrolTestScoreByUserId(String userId) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select e.score from EnrrolTest e where e.users.userId = :userId";
		TypedQuery<Double> query = en.createQuery(jpql, Double.class);
		query.setParameter("userId", userId);
		return query.getResultList();
	}

	@Override
	public List<EnrrolLesson> findAllEnrrolLessonByUserId(String userId) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "SELECT er FROM EnrrolLesson er WHERE er.users.userId = :userId";
		TypedQuery<EnrrolLesson> query = en.createQuery(jpql, EnrrolLesson.class);
		query.setParameter("userId", userId);
		return query.getResultList();
	}

	@Override
	public List<String> findAllTestNamefromUserId(String userId) {
		EntityManager en = JPAConfig.getEntityManager();
		String jpql = "select mt.testName from MockTest mt join EnrrolTest et on mt.testId = et.mockTests.testId where et.users.userId = :userId";
		TypedQuery<String> query = en.createQuery(jpql, String.class);
		query.setParameter("userId", userId);
		return query.getResultList();
	}

}
