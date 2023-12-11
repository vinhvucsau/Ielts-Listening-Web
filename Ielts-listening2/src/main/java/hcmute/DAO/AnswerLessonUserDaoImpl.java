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

	@Override
	public void saveOrUpdate(AnswerLessonUser answerLessonUser) {
		
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			EnrrolLesson enrrolLesson = enma.find(EnrrolLesson.class, answerLessonUser.getEnrrolLesson().getEnrrolId());
			AnswerLesson answerLesson = enma.find(AnswerLesson.class, answerLessonUser.getAnswerLesson().getAnswerId());
			answerLessonUser.setAnswerLesson(answerLesson);
			answerLessonUser.setEnrrolLesson(enrrolLesson);
			CompositeAnswerLessonUser id = new CompositeAnswerLessonUser();
			id.setAnswerLesson(answerLesson.getAnswerId());
			id.setEnrrolLesson(enrrolLesson.getEnrrolId());
			if(enma.find(AnswerLessonUser.class, id) == null) {
				enma.persist(answerLessonUser);
			} else {
				enma.merge(answerLessonUser);
			}
			//id.
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}
	
}
