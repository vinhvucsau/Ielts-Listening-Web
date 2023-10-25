package hcmute.entity;
import hcmute.utils.Constants;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = Constants.ACCOUNT_RELATION)
public class Account implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	private String userName;
	
	@Column(columnDefinition = "varchar(255)")
	private String passWord;
	
	@Column(columnDefinition = "varchar(255)")
	private String role;
	
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
	
}
