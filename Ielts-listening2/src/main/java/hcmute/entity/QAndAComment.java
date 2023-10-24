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
@Table(name = Constants.Q_AND_A_COMMENT_RELATION)
public class QAndAComment implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String commentId;

	@Column(columnDefinition = "varchar(10000)")
	private String comment;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "qAndAId")
	private QAndA qAndAs;

	@OneToMany(mappedBy = Constants.Q_AND_A_COMMENT_RELATION, fetch = FetchType.EAGER)
	private List<QAndARepComment> qAndARepComments;

	public QAndAComment(String commentId, String comment, User users, QAndA qAndAs,
			List<QAndARepComment> qAndARepComments) {
		super();
		this.commentId = commentId;
		this.comment = comment;
		this.users = users;
		this.qAndAs = qAndAs;
		this.qAndARepComments = qAndARepComments;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public QAndA getqAndAs() {
		return qAndAs;
	}

	public void setqAndAs(QAndA qAndAs) {
		this.qAndAs = qAndAs;
	}

	public List<QAndARepComment> getqAndARepComments() {
		return qAndARepComments;
	}

	public void setqAndARepComments(List<QAndARepComment> qAndARepComments) {
		this.qAndARepComments = qAndARepComments;
	}
	
}
