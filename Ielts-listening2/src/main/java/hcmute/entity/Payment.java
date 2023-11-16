package hcmute.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	private String paymentId;
	
	@Column(name = "dateBuy")
	private Date dateBuy;
	
	@Column(name = "cost")
	private Integer cost;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;

	public Payment(String paymentId, Date dateBuy, Integer cost, User users) {
		this.paymentId = paymentId;
		this.dateBuy = dateBuy;
		this.cost = cost;
		this.users = users;
	}
	
	public Payment() {
		super();
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public Date getDateBuy() {
		return dateBuy;
	}

	public void setDateBuy(Date dateBuy) {
		this.dateBuy = dateBuy;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}
	
}
