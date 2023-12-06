package hcmute.services;

import java.util.List;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.IAccountDAO;
import hcmute.DAO.IUserDAO;
import hcmute.DAO.UserDAOImpl;
import hcmute.entity.Account;
import hcmute.entity.User;

public class UserServiceImpl implements IUserService {
	UserDAOImpl userDAO = new UserDAOImpl();

	@Override
	public User findUserByID(String id) {
		// TODO Auto-generated method stub
		return userDAO.findById(id);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDAO.update(user);
	}

	@Override
	public boolean findDuplicateEmail(String email, String userId) {
		// TODO Auto-generated method stub
		return userDAO.findDuplicateEmail(email, userId);
	}

	@Override
	public boolean findDuplicatePhone(String phoneNum, String userId) {
		// TODO Auto-generated method stub
		return userDAO.findDuplicatePhone(phoneNum, userId);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDAO.findAll();
	}

}
