package hcmute.DAO;

import hcmute.entity.Account;
import hcmute.entity.User;

public interface IAccountDAO {
	String SignUp(Account account);

	User Login(Account account);
}
