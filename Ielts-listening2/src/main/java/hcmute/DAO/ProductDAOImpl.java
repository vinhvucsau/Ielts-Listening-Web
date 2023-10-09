package hcmute.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import hcmute.models.CategoryModels;
import hcmute.models.ProductModel;

public class ProductDAOImpl implements IProductDAO{
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs =null;
	public List<ProductModel> findAll() {
	// xu ly du lieu hien thi tat ca category
			List<ProductModel> listProduct= new ArrayList<ProductModel>();
			String sql ="select * from Product";
			try {
				
				new DBConnection();
				conn =DBConnection.getConnection();
				ps = conn.prepareStatement(sql);
				rs =ps.executeQuery();
				while(rs.next())
				{
					ProductModel product =new ProductModel();
					product.setProductID(rs.getInt("ProductID"));
					product.setProductName(rs.getString("ProductName"));
					product.setDescription(rs.getString("Description"));
					product.setPrice(rs.getInt("Price"));
					product.setImageLink(rs.getString("imageLink"));
					product.setCateID(rs.getInt("CategoryID"));
					product.setSellerID(rs.getInt("SellerID"));
					product.setAmount(rs.getInt("Amount"));
					product.setStoke(rs.getInt("stoke"));

					listProduct.add(product);
				}
				conn.close();
				//ket noi du lieu 
				//truy van du lieu 
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return listProduct;
		}
	@Override
	public List<ProductModel> findProductByCategory(int id) {
		String sql ="select * from Product where CategoryID =?";
		
		List<ProductModel> listProduct= new ArrayList<ProductModel>();
		try {
			
			new DBConnection();
			conn =DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs =ps.executeQuery();
			while(rs.next())
			{
				ProductModel product =new ProductModel();
				product.setProductID(rs.getInt("ProductID"));
				product.setProductName(rs.getString("ProductName"));
				product.setDescription(rs.getString("Description"));
				product.setPrice(rs.getInt("Price"));
				product.setImageLink(rs.getString("imageLink"));
				product.setCateID(rs.getInt("CategoryID"));
				product.setSellerID(rs.getInt("SellerID"));
				product.setAmount(rs.getInt("Amount"));
				product.setStoke(rs.getInt("stoke"));

				listProduct.add(product);
			}
			conn.close();
			//ket noi du lieu 
			//truy van du lieu 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProduct;
	}
}
