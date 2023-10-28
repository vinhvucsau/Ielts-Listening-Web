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
@Table(name = Constants.REP_QUIZ_COMMENT_RELATION)
public class QuizRepComment implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String repCommentId;
	
	@Column(columnDefinition = "varchar(10000)")
	private String replyComment;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "commentId")
	private QuizComment quizComments;

	public QuizRepComment(String repCommentId, String replyComment, User users, QuizComment quizComments) {
		super();
		this.repCommentId = repCommentId;
		this.replyComment = replyComment;
		this.users = users;
		this.quizComments = quizComments;
	}
	
	public QuizRepComment() {
		super();
	}

	public String getRepCommentId() {
		return repCommentId;
	}

	public void setRepCommentId(String repCommentId) {
		this.repCommentId = repCommentId;
	}

	public String getReplyComment() {
		return replyComment;
	}

	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public QuizComment getQuizComments() {
		return quizComments;
	}

	public void setQuizComments(QuizComment quizComments) {
		this.quizComments = quizComments;
	}
	
}
