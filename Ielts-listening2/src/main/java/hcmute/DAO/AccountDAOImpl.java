package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

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
		System.out.print(existingAccount);
		if (existingAccount != null) {
			trans.rollback();
			System.out.print("Tai khoan ton tai");
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
		// TODO Auto-generated method stub
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		String userName = account.getUserName();
		Account acc = enma.find(Account.class, userName);
		return acc;
	}
}
