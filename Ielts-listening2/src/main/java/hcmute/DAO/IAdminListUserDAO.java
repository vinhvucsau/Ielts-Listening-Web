package hcmute.DAO;

import java.util.List;

import hcmute.entity.User;

public interface IAdminListUserDAO {
	List<User> findAllUser();
	User findUserById(String userId);
}
