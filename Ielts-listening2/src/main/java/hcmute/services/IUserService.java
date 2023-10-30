package hcmute.services;

import hcmute.entity.User;

public interface IUserService {
	User findUserByID(String id);
}
