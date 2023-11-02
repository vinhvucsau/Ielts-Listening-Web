package hcmute.utils.compositeId;

import java.io.Serializable;

public class AnswerUserId implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String answerTest;
	private String enrollTest;
	public AnswerUserId(String answerTest, String enrollTest) {
		super();
		this.answerTest = answerTest;
		this.enrollTest = enrollTest;
	}
	public AnswerUserId() {
		super();
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}
}