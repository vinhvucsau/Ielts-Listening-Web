package hcmute.DAO;

import java.util.List;

import hcmute.models.CategoryModels;

public interface ICategoryDAO {
	/// dinh nghia cac phuong thuc 
	List<CategoryModels> findAll();
	
	void insert(CategoryModels model);
	
	void delete(int id);
	void update(CategoryModels model);
	CategoryModels findOne(int id);

}
