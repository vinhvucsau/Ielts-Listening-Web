package hcmute.services;

import hcmute.entity.Account;
import hcmute.entity.User;

public interface IAccountServices {
	String SignUp(Account account);
	User Login(Account account);
	Account findByID(String id);
	void update(Account account);
}
