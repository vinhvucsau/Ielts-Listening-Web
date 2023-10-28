package hcmute.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;
import hcmute.utils.compositeId.CompositeReadNotifyId;

@Entity
//@IdClass(CompositeReadNotifyId.class) 
@Table(name = Constants.READ_NOTIFY_RELATION)
public class ReadNotify implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) private String userId;
	 * 
	 * @Id
	 * 
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) private String notifyId;
	 */
	
	@Column(columnDefinition = "TINYINT")
	private boolean seen;
	
	@Id
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
	
	public ReadNotify() {
		super();
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
