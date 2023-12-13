package hcmute.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import JPAConfig.JPAConfig;
import hcmute.entity.AnswerLesson;
import hcmute.entity.AnswerLessonUser;
import hcmute.entity.EnrrolLesson;
import hcmute.utils.compositeId.CompositeAnswerLessonUser;

public class AnswerLessonUserDaoImpl extends AbstractDao<AnswerLessonUser> implements IAnswerLessonUserDao {

	public AnswerLessonUserDaoImpl() {
		super(AnswerLessonUser.class);
	}
}
