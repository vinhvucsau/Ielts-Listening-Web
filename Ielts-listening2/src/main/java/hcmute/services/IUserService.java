package hcmute.services;

import java.util.List;

import hcmute.entity.User;

public interface IUserService {
	User findUserByID(String id);
	void update (User user);
	boolean findDuplicateEmail(String email, String userId);
	boolean findDuplicatePhone (String phoneNum, String userId);
	List<User> findAll();
}
