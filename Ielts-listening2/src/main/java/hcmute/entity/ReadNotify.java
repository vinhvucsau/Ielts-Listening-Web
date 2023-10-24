package hcmute.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.READ_NOTIFY_RELATION)
public class ReadNotify implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Column(columnDefinition = "TINYINT")
	private boolean seen;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "notifyId")
	private Notify notifys;

	public ReadNotify(boolean seen, User users, Notify notifys) {
		super();
		this.seen = seen;
		this.users = users;
		this.notifys = notifys;
	}

	public boolean isSeen() {
		return seen;
	}

	public void setSeen(boolean seen) {
		this.seen = seen;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public Notify getNotifys() {
		return notifys;
	}

	public void setNotifys(Notify notifys) {
		this.notifys = notifys;
	}
	
	

}
