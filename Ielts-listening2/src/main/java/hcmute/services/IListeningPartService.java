package hcmute.services;

import java.util.List;

import hcmute.entity.ListeningPart;


public interface IListeningPartService {
	void insert(ListeningPart listeningPart);
	void update(ListeningPart listeningPart);
	void delete(ListeningPart listeningPart);
	ListeningPart findById(String listeningPartId);
	Long countAll();
	List<ListeningPart> findAll();
	List<ListeningPart> findAll(boolean all, int firstResult, int maxResult);
	
	List<ListeningPart> findByMockTestId(String mockTestId);
}
