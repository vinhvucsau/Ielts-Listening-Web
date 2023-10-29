package hcmute.services;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.IAccountDAO;
import hcmute.DAO.IUserDAO;
import hcmute.DAO.UserDAOImpl;
import hcmute.entity.Account;
import hcmute.entity.User;

public class UserServiceImpl implements IUserService {
	IUserDAO userDAO = new UserDAOImpl();

	@Override
	public User findUserByID(String id) {
		// TODO Auto-generated method stub
		return userDAO.findUserByID(id);
	}

}
