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

@Entity
@Table(name = "Category")
public class AnswerLesson implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	private String answerId;
	
	@Column(columnDefinition = "varchar(255)")
	private String answerKey;
	
	@Column(columnDefinition = "int")
	private int number;
	
	
	@ManyToOne
	@JoinColumn(name = "lessonId")
	private Lesson lessons;

	public AnswerLesson(String answerId, String answerKey, int number, Lesson lessons) {
		super();
		this.answerId = answerId;
		this.answerKey = answerKey;
		this.number = number;
		this.lessons = lessons;
	}

	public AnswerLesson() {
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

	public Lesson getLessons() {
		return lessons;
	}

	public void setLessons(Lesson lessons) {
		this.lessons = lessons;
	}
	
}
