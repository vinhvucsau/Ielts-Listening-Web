package hcmute.services;

import java.util.List;

import hcmute.DAO.CategoryDAOimpl;
import hcmute.DAO.ICategoryDAO;
import hcmute.models.CategoryModels;

public class CategoryServiceImpl implements ICategoryService {
	
	//goi cac phuong thuc trong DAO 
	ICategoryDAO cateDao = new CategoryDAOimpl();
	@Override
	public List<CategoryModels> findAll() {
		// xu li logic neu co 
		// goi va truyen cho  DAO
		return cateDao.findAll();
	}@Override
	public void insert(CategoryModels model) {
		//xu ly logic 
		//goi va truyen cho DAO
		cateDao.insert(model);
		
	}
	@Override
	public void delete(int id) {
		cateDao.delete(id);
	}
	@Override
	public CategoryModels findOne(int id) {
		return cateDao.findOne(id);
	}
	public void update(CategoryModels model)
	{
		CategoryModels oldModel = cateDao.findOne(model.getCateID());
		oldModel.setCateID(model.getCateID());
		oldModel.setCateName(model.getCateName());
		oldModel.setImage(model.getImage());
		cateDao.update(oldModel);
	}

}
