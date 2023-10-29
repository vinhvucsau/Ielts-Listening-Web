package hcmute.DAO;

import hcmute.entity.User;

public interface IUserDAO {
	User findUserByID(String id);
}
