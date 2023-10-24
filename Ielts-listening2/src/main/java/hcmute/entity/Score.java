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
@Table(name = Constants.SCORE_RELATION)
public class Score implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String scoreId;
	
	@Column(columnDefinition = "double")
	private double score;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "lessonId")
	private Lesson lessons;

	public Score(String scoreId, double score, User users, Lesson lessons) {
		super();
		this.scoreId = scoreId;
		this.score = score;
		this.users = users;
		this.lessons = lessons;
	}

	public String getScoreId() {
		return scoreId;
	}

	public void setScoreId(String scoreId) {
		this.scoreId = scoreId;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public Lesson getLessons() {
		return lessons;
	}

	public void setLessons(Lesson lessons) {
		this.lessons = lessons;
	}
	
}
