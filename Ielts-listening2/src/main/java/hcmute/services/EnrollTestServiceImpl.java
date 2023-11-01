package hcmute.services;

import java.util.List;

import hcmute.DAO.EnrollTestDao;
import hcmute.DAO.ListeningPartDao;
import hcmute.DAO.MockTestDAOImpl;
import hcmute.entity.EnrrolTest;
import hcmute.entity.ListeningPart;
import hcmute.entity.MockTest;
import hcmute.entity.User;

public class EnrollTestServiceImpl implements IEnrollTestService{

	private EnrollTestDao enrollTestDao = new EnrollTestDao();
	@Override
	public void insert(EnrrolTest enrollTest) {
		enrollTestDao.insert(enrollTest);
	}

	@Override
	public void update(EnrrolTest enrollTest) {
		enrollTestDao.update(enrollTest);
	}

	@Override
	public void delete(EnrrolTest enrollTest) {
		enrollTestDao.delete(enrollTest);
	}

	@Override
	public EnrrolTest findById(String enrollTestId) {
		return enrollTestDao.findById(enrollTestId);
	}

	@Override
	public Long countAll() {
		return enrollTestDao.countAll();
	}

	@Override
	public List<EnrrolTest> findAll() {
		return enrollTestDao.findAll();
	}

	@Override
	public List<EnrrolTest> findAll(boolean all, int firstResult, int maxResult) {
		return enrollTestDao.findAll(all,firstResult,maxResult);
	}
}
