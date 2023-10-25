package hcmute.services;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.IAccountDAO;
import hcmute.entity.Account;

public class AccountServiceImpl implements IAccountServices{

	IAccountDAO accountDAO = new AccountDAOImpl();
	
	@Override
	public void SignUp(Account account) {
		accountDAO.SignUp(account);	
	}
}
