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
@Table(name = Constants.Q_AND_A_REP_COMMENT_RELATION)
public class QAndARepComment implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String repCommentId;
	
	@Column(columnDefinition = "varchar(10000)")
	private String replyComment;
	
	@ManyToOne
	@JoinColumn(name = "commentId")
	private QAndAComment qAndAComments;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;

}
