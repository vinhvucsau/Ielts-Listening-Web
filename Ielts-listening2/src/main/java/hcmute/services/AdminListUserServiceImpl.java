package hcmute.services;

import java.util.List;

import hcmute.DAO.AminListUserDAOImpl;
import hcmute.DAO.IAdminListUserDAO;
import hcmute.entity.User;

public class AdminListUserServiceImpl implements IAdminListUserService{
	IAdminListUserDAO iAdminListUser = new AminListUserDAOImpl();
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return iAdminListUser.findAllUser();
	}
	@Override
	public User findUserById(String userId) {
		// TODO Auto-generated method stub
		return iAdminListUser.findUserById(userId);
	}
	

}
