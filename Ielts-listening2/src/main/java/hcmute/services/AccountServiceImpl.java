package hcmute.services;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.IAccountDAO;
import hcmute.entity.Account;
import hcmute.entity.User;

public class AccountServiceImpl implements IAccountServices{

	IAccountDAO accountDAO = new AccountDAOImpl(Account.class);
	
	@Override
	public String SignUp(Account account) {
		return accountDAO.SignUp(account);	
	}

	@Override
	public User Login(Account account) {
		// TODO Auto-generated method stub
		return accountDAO.Login(account);	}

	@Override
	public Account findByID(String id) {
		// TODO Auto-generated method stub
		return accountDAO.findById(id);
	}

	@Override
	public void update(Account account) {
		// TODO Auto-generated method stub
		accountDAO.update(account);
	}
}
