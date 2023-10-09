package hcmute.services;

import java.util.List;

import hcmute.DAO.ProductDAOImpl;
import hcmute.DAO.IProductDAO;
import hcmute.models.ProductModel;

public class ProductServiceImpl implements IProductService{
	IProductDAO productDAO = new ProductDAOImpl();

	@Override
	public List<ProductModel> findAll() {
		// TODO Auto-generated method stub
		return productDAO.findAll();
	}

	@Override
	public List<ProductModel> findProductByCategory(int id) {
		// TODO Auto-generated method stub
		return productDAO.findProductByCategory(id);
	}

	

	
	
	

}
