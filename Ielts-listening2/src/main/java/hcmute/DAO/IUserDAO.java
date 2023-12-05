package hcmute.DAO;

import hcmute.entity.User;

public interface IUserDAO {
	User findUserByID(String id);
	boolean findDuplicateEmail(String email, String userId);
	boolean findDuplicatePhone (String phoneNum, String userId);
}
