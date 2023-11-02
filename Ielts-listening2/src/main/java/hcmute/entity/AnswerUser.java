package hcmute.entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Max;

import com.fasterxml.jackson.core.sym.Name;

import hcmute.utils.Constants;
import hcmute.utils.compositeId.AnswerUserId;

/**
 * Entity implementation class for Entity: AnswerUser
 *
 */
@Entity
@IdClass(AnswerUserId.class)
@Table(name = Constants.ANSWER_USER_RELATION)
public class AnswerUser implements Serializable {

	
	private static final long serialVersionUID = 1L;
	@Id
	@ManyToOne
	@JoinColumn(name = "answerId")
	private AnswerTest answerTest;
	@Id
	@ManyToOne
	@JoinColumn(name = "enrrolId")
	private EnrrolTest enrollTest;
	private String answer;
	public AnswerUser() {
		super();
	}
	
	@Override
	public String toString() {
		return "AnswerUser [answerTest=" + answerTest + ", enrollTest=" + enrollTest + ", answer=" + answer + "]";
	}

	public AnswerUser(AnswerTest answerTest, EnrrolTest enrollTest, String answer) {
		super();
		this.answerTest = answerTest;
		this.enrollTest = enrollTest;
		this.answer = answer;
	}
	public AnswerTest getAnswerTest() {
		return answerTest;
	}
	public void setAnswerTest(AnswerTest answerTest) {
		this.answerTest = answerTest;
	}
	public EnrrolTest getEnrollTest() {
		return enrollTest;
	}
	public void setEnrollTest(EnrrolTest enrollTest) {
		this.enrollTest = enrollTest;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
   
}
