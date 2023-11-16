package hcmute.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.ENRROL_COURSE_RELATION)
public class EnrrolLesson implements Serializable {

	private static final long serialVersionUID = 1L;

	
	@Id
	private String enrrolId;
	
	@Column(name = "enrrollmentDate")
	private Date enrrollmentDate;

	@Column(name = "numberOfStart")
	private Integer numberOfStart;
	
	@Column(name = "score")
	private double score;

	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;

	@ManyToOne
	@JoinColumn(name = "lessonId")
	private Lesson lessons;

	@OneToMany(mappedBy = "enrrolLesson", fetch = FetchType.LAZY)
	private List<AnswerLessonUser> answerLessonUser;
	
	public EnrrolLesson() {
		super();
	}

	public String getEnrrolId() {
		return enrrolId;
	}

	public void setEnrrolId(String enrrolId) {
		this.enrrolId = enrrolId;
	}

	public Date getEnrrollmentDate() {
		return enrrollmentDate;
	}

	public void setEnrrollmentDate(Date enrrollmentDate) {
		this.enrrollmentDate = enrrollmentDate;
	}

	public Integer getNumberOfStart() {
		return numberOfStart;
	}

	public void setNumberOfStart(Integer numberOfStart) {
		this.numberOfStart = numberOfStart;
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

	public List<AnswerLessonUser> getAnswerLessonUser() {
		return answerLessonUser;
	}

	public void setAnswerLessonUser(List<AnswerLessonUser> answerLessonUser) {
		this.answerLessonUser = answerLessonUser;
	}

	public EnrrolLesson(String enrrolId, Date enrrollmentDate, Integer numberOfStart, double score, User users,
			Lesson lessons, List<AnswerLessonUser> answerLessonUser) {
		this.enrrolId = enrrolId;
		this.enrrollmentDate = enrrollmentDate;
		this.numberOfStart = numberOfStart;
		this.score = score;
		this.users = users;
		this.lessons = lessons;
		this.answerLessonUser = answerLessonUser;
	}
	
	
	
}
