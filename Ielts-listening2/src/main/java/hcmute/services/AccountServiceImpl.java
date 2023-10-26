package hcmute.services;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.IAccountDAO;
import hcmute.entity.Account;

public class AccountServiceImpl implements IAccountServices{

	IAccountDAO accountDAO = new AccountDAOImpl();
	
	@Override
	public String SignUp(Account account) {
		return accountDAO.SignUp(account);	
	}
}
