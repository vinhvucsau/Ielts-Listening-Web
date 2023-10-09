package hcmute.services;

import java.util.List;

import hcmute.models.CategoryModels;

public interface ICategoryService {
// dinh nghia cac phuong thuc 
	List<CategoryModels> findAll();
	CategoryModels findOne(int id) ;
	void insert(CategoryModels model);
	void delete(int id);
	void update(CategoryModels model);
}
