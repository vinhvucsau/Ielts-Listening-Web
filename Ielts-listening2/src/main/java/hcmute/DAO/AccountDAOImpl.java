package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import JPAConfig.JPAConfig;
import hcmute.entity.Account;

public class AccountDAOImpl implements IAccountDAO{

	@Override
	public void SignUp(Account account) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			
			Account mergedAccount = enma.merge(account);

			// Persist the managed entity
			enma.persist(mergedAccount);
			
			//enma.persist(account);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}

}
