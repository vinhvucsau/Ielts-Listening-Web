package hcmute.entity;
import hcmute.utils.Constants;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = Constants.ACCOUNT_RELATION)
public class Account implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	private String userName;
	
	@Column(name = "passWord")
	private String passWord;
	
	@Column(name = "role")
	private String role;
	
	@Column(columnDefinition = "varchar(10)")
	private String code;
	
	@Column(columnDefinition = "tinyint")
	private boolean status;
	
	/*
	 * @OneToMany(mappedBy = "accounts", fetch = FetchType.EAGER) private List<User>
	 * users;
	 */
	
	 @OneToOne(mappedBy = "account", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	    private User users;
	 

	public Account(String userName, String passWord, String role, User users) {
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.users = users;
	}
	public Account(String userName, String passWord, String role, User users, String code, boolean status) {
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.users = users;
		this.code = code;
		this.status = status;
	}
	public Account() {
		super();
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
