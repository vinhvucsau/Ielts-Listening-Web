package hcmute.services;

import java.util.List;

import hcmute.DAO.EnrollTestDao;
import hcmute.DAO.ListeningPartDao;
import hcmute.DAO.MockTestDAOImpl;
import hcmute.entity.EnrrolTest;
import hcmute.entity.ListeningPart;
import hcmute.entity.MockTest;
import hcmute.entity.User;

public class EnrollTestService{

	private EnrollTestDao enrollTestDao = new EnrollTestDao();
	
	public void insert(EnrrolTest enrollTest) {
		enrollTestDao.insert(enrollTest);
	}

	public void update(EnrrolTest enrollTest) {
		enrollTestDao.update(enrollTest);
	}

	public void delete(EnrrolTest enrollTest) throws Exception {
		enrollTestDao.delete(enrollTest);
	}

	public EnrrolTest findById(String enrollTestId) {
		return enrollTestDao.findById(enrollTestId);
	}

	public Long countAll() {
		return enrollTestDao.countAll();
	}

	public List<EnrrolTest> findAll() {
		return enrollTestDao.findAll();
	}

	public List<EnrrolTest> findAll(boolean all, int firstResult, int maxResult) {
		return enrollTestDao.findAll(all,firstResult,maxResult);
	}

	public void completeTest(String enrrolTestId) {
		EnrrolTest newEnrrolTest = enrollTestDao.findById(enrrolTestId);
		if (newEnrrolTest != null) {
			try {
				long numberOfCorrectAnswer = calcNumberOfCorrectAnswers(enrrolTestId);
				long numberOfQuestion = calcNumberOfQuestTion(enrrolTestId);
				double score = (double)numberOfCorrectAnswer / numberOfQuestion;
				newEnrrolTest.setScore(score);
				enrollTestDao.update(newEnrrolTest);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public long calcNumberOfCorrectAnswers(String enrollTestId) {
		EnrrolTest enrollTest = enrollTestDao.findById(enrollTestId);
		long number = 0;
		if(enrollTest != null) {
			number = enrollTest.getAnswerUsers().stream()
					.filter(answerUser -> answerUser.getAnswer().equals(answerUser.getAnswerTest().getAnswerKey()))
					.count();
		}
		return number;
	}
	
	public long calcNumberOfQuestTion(String enrollTestId) {
		EnrrolTest enrollTest = enrollTestDao.findById(enrollTestId);
		long number = 0;
		if(enrollTest != null) {
			number = enrollTest.getMockTests().getListeningParts().stream()
					.map(part -> part.getAnswerTests().size())
					.mapToLong(Integer::intValue)
					.sum();
		} 
		return number;
	}
}
