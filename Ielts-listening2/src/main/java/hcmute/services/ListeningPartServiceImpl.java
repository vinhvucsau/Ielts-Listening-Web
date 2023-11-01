package hcmute.services;

import java.util.List;

import hcmute.DAO.ListeningPartDao;
import hcmute.entity.ListeningPart;

public class ListeningPartServiceImpl implements IListeningPartService {

	ListeningPartDao dao = new ListeningPartDao();
	@Override
	public void insert(ListeningPart listeningPart) {
		dao.insert(listeningPart);
	}

	@Override
	public void update(ListeningPart listeningPart) {
		dao.update(listeningPart);
	}

	@Override
	public void delete(ListeningPart listeningPart) {
		dao.delete(listeningPart);
	}

	@Override
	public ListeningPart findById(String listeningPartId) {
		return dao.findById(listeningPartId);
	}

	@Override
	public Long countAll() {
		return dao.countAll();
	}

	@Override
	public List<ListeningPart> findAll() {
		return dao.findAll();
	}

	@Override
	public List<ListeningPart> findAll(boolean all, int firstResult, int maxResult) {
		return dao.findAll(all, firstResult, maxResult);
	}

	@Override
	public List<ListeningPart> findByMockTestId(String mockTestId) {
		return dao.findByMockTestId(mockTestId);
	}

}
