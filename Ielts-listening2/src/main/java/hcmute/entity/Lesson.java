package hcmute.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.LESSON_RELATION)
public class Lesson implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private String lessonId;
	
	@Column(columnDefinition = "varchar(255)")
	private String lessonName;
	
	@Column(columnDefinition = "varchar(1000)")
	private String description;
	
	@Column(columnDefinition = "varchar(255)")
	private String video;
	
	@Column(columnDefinition = "varchar(255)")
	private String image;
	
	@Column(columnDefinition = "varchar(255)")
	private String audio;
	
	@Column(columnDefinition = "date")
	private String createdDate;
	
	@Column(columnDefinition = "varchar(10000)")
	private String answerSheet;
	
	@OneToMany(mappedBy = "lessons", fetch = FetchType.LAZY)
	private List<Score> scores;
	
	@OneToMany(mappedBy = "lessons", fetch = FetchType.LAZY)
	private List<AnswerLesson> answerQuestions;
	
	@ManyToOne
	@JoinColumn(name = "courseId")
	private Course courses;

	public Lesson(String lessonId, String lessonName, String description, String video, String image,
			String createdDate, String answerSheet, List<Score> scores, List<AnswerLesson> answerQuestions,
			Course courses) {
		super();
		this.lessonId = lessonId;
		this.lessonName = lessonName;
		this.description = description;
		this.video = video;
		this.image = image;
		this.createdDate = createdDate;
		this.answerSheet = answerSheet;
		this.scores = scores;
		this.answerQuestions = answerQuestions;
		this.courses = courses;
	}
	
	public Lesson() {
		super();
	}

	public String getLessonId() {
		return lessonId;
	}

	public void setLessonId(String lessonId) {
		this.lessonId = lessonId;
	}

	public String getLessonName() {
		return lessonName;
	}

	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getAnswerSheet() {
		return answerSheet;
	}

	public void setAnswerSheet(String answerSheet) {
		this.answerSheet = answerSheet;
	}

	public List<Score> getScores() {
		return scores;
	}

	public void setScores(List<Score> scores) {
		this.scores = scores;
	}

	public List<AnswerLesson> getAnswerQuestions() {
		return answerQuestions;
	}

	public void setAnswerQuestions(List<AnswerLesson> answerQuestions) {
		this.answerQuestions = answerQuestions;
	}

	public Course getCourses() {
		return courses;
	}

	public void setCourses(Course courses) {
		this.courses = courses;
	}
}
