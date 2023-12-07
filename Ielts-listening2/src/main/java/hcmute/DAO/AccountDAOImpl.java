package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import JPAConfig.JPAConfig;
import hcmute.entity.Account;
import hcmute.entity.ListeningPart;
import hcmute.entity.User;

public class AccountDAOImpl extends AbstractDao<Account> implements IAccountDAO {

	public AccountDAOImpl(Class<Account> cls) {
		super(cls);
		// TODO Auto-generated constructor stub
	}

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
				System.out.println(user);
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

	@Override
	public Account findById(String id) {
		EntityManager enma = JPAConfig.getEntityManager();
		Account account = enma.find(Account.class, id);
		return account;
	}
	
	@Override
	public void update(Account account) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.merge(account);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
		} finally {
			enma.close();
		}
		
	}
	
	public User getUserByUsername(String username) {
		EntityManager enma = JPAConfig.getEntityManager();
		try {			
			String jpql = "Select u from User u Where u.userName = :username";
			TypedQuery<User> query = enma.createQuery(jpql, User.class);
			query.setParameter("username", username);
			return query.getResultList().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			enma.close();
		}
		return null;
	}
	
	public User getUserByEmail(String email) {
		EntityManager enma = JPAConfig.getEntityManager();
		try {			
			String jpql = "Select u from User u Where u.email = :email";
			TypedQuery<User> query = enma.createQuery(jpql, User.class);
			query.setParameter("email", email);
			return query.getResultList().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			enma.close();
		}
		return null;
	}
	@Override
    public boolean checkExistEmail(String email) {
        EntityManager em = JPAConfig.getEntityManager();
        TypedQuery<Long> query = em.createQuery("SELECT COUNT(u) FROM User u WHERE u.email = :email", Long.class);
        query.setParameter("email", email);
        Long count = query.getSingleResult();
        return count > 0;
    }
	@Override
    public boolean checkExistUsername(String username) {
        EntityManager em = JPAConfig.getEntityManager();
        TypedQuery<Long> query = em.createQuery("SELECT COUNT(u) FROM User u WHERE u.account.userName = :username", Long.class);
        query.setParameter("username", username);
        Long count = query.getSingleResult();
        return count > 0;
    }
	

}