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
@Table(name = Constants.USER_RELATION)
public class AnswerQuiz implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String answerId;
	
	@Column(columnDefinition = "varchar(255)")
	private String answerKey;
	
	@Column(columnDefinition = "int")
	private int number;
	
	@ManyToOne
	@JoinColumn(name = "quizId")
	private Quiz quizs;

	public AnswerQuiz(String answerId, String answerKey, int number, Quiz quizs) {
		super();
		this.answerId = answerId;
		this.answerKey = answerKey;
		this.number = number;
		this.quizs = quizs;
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

	public Quiz getQuizs() {
		return quizs;
	}

	public void setQuizs(Quiz quizs) {
		this.quizs = quizs;
	}

}
