package hcmute.services;

import hcmute.DAO.AnswerTestDao;
import hcmute.entity.AnswerTest;

public class AnswerTestService {
	private AnswerTestDao answerTestDao = new AnswerTestDao();
	public AnswerTest findById(String answerTestId) {
		return answerTestDao.findById(answerTestId);
	}
}
