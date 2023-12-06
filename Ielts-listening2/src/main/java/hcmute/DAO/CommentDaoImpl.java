package hcmute.DAO;

import hcmute.entity.CommentLesson;

public class CommentDaoImpl extends AbstractDao<CommentLesson> implements ICommentDao {

	public CommentDaoImpl() {
		super(CommentLesson.class);
	}

}
