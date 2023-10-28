package hcmute.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.ANSWER_TEST_RELATION)
public class AnswerTest implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String answerId;
	
	@Column(columnDefinition = "varchar(255)")
	private String answerKey;
	
	@Column(columnDefinition = "int")
	private int number;
	
	@ManyToOne
	@JoinColumn(name = "partId")
	private ListeningPart listeningParts;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;

	public AnswerTest(String answerId, String answerKey, int number, ListeningPart listeningParts, User users) {
		super();
		this.answerId = answerId;
		this.answerKey = answerKey;
		this.number = number;
		this.listeningParts = listeningParts;
		this.users = users;
	}
	
	public AnswerTest() {
		super();
	}

	public String getAnswerId() {
		return answerId;
	}

	public void setAnswerId(String answerId) {
		this.answerId = answerId;
	}

	public String getAnswerKey() {
		return answerKey;
	}

	public void setAnswerKey(String answerKey) {
		this.answerKey = answerKey;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public ListeningPart getListeningParts() {
		return listeningParts;
	}

	public void setListeningParts(ListeningPart listeningParts) {
		this.listeningParts = listeningParts;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}
	
}
