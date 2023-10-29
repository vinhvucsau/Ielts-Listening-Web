package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Account;
import hcmute.entity.User;

public class AccountDAOImpl implements IAccountDAO {

	@Override
	public String SignUp(Account account) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		String userName = account.getUserName();
		Account existingAccount = enma.find(Account.class, userName);
		if (existingAccount != null) {
			trans.rollback();
			return "Existed Account";
		}
		try {
			trans.begin();
			enma.persist(account);
			trans.commit();
			return "Success";
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
	}

	@Override
	public User Login(Account account) {
		EntityManager entityManager = JPAConfig.getEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();

		try {
			transaction.begin();
			String userName = account.getUserName();
			Account acc = entityManager.find(Account.class, userName);

			if (acc != null && acc.getPassWord().equals(account.getPassWord())) {
				String getUserQueryString = "SELECT u FROM User u WHERE u.account.userName = :username";
				TypedQuery<User> query = entityManager.createQuery(getUserQueryString, User.class);
				query.setParameter("username", userName);
				User user = query.getSingleResult();
				transaction.commit();
				return user;
			}
			transaction.rollback();
		} catch (Exception e) {
			// Handle exceptions here (e.g., log or throw)
			transaction.rollback();
		} finally {
			entityManager.close();
		}

		return null; // Return null if login fails
	}

}