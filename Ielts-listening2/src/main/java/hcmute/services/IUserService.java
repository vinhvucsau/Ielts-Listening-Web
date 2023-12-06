package hcmute.services;

import java.util.List;

import hcmute.entity.User;

public interface IUserService {
	User findUserByID(String id);
	void update (User user);
	List<User> findAll();
}
