package hcmute.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import hcmute.models.CategoryModels;

public class CategoryDAOimpl implements ICategoryDAO{
	Connection conn=null;
	PreparedStatement ps = null;
	ResultSet rs =null;
	@Override
	public List<CategoryModels> findAll() {
		// xu ly du lieu hien thi tat ca category
		List<CategoryModels> listCate= new ArrayList<CategoryModels>();
		String sql ="select * from category";
		try {
			
			new DBConnection();
			conn =DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			rs =ps.executeQuery();
			while(rs.next())
			{
				CategoryModels category =new CategoryModels();
				category.setCateID(rs.getInt("categoryID"));
				category.setCateName(rs.getString("categoryname"));
				category.setImage(rs.getString("icon"));
				listCate.add(category);
			}
			conn.close();
			//ket noi du lieu 
			//truy van du lieu 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCate;
	}@Override
	public void insert(CategoryModels model) {
		//xu ly them category 
		String sql ="INSERT INTO category ( CategoryName, Icon)\r\n"
				+ "VALUES ( ?, ?)";
		try {
			
			new DBConnection();
			conn =DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			//gan gia tri cho tham so 
			
			ps.setString(1,model.getCateName());
			ps.setString(2,model.getImage());
			ps.executeUpdate(); // thuc thi cau query
			
			//ket noi du lieu 
			//truy van du lieu 
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void delete(int id) {
		
		String sql ="DELETE FROM category WHERE CategoryID = ?";
try {
			
			new DBConnection();
			conn =DBConnection.getConnection();
			 ps = conn.prepareStatement(sql);
			//gan gia tri cho tham so 
			
			ps.setInt(1,id);
			
			ps.executeUpdate(); // thuc thi cau query
			
			//ket noi du lieu 
			//truy van du lieu 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public CategoryModels findOne(int id) {
		String sql ="select * from category where CategoryID =?";
		CategoryModels model = new CategoryModels();
		try {
			conn =DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs =ps.executeQuery();
			while(rs.next())
			{
				model.setCateID(rs.getInt("CategoryID"));
				model.setCateName(rs.getString("CategoryName"));
				model.setImage(rs.getString("icon"));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	@Override
	public void update(CategoryModels model) {
		String sql="update Category set CategoryName=?,Icon=? where CategoryID=?";
try {
			
			new DBConnection();
			conn =DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			//gan gia tri cho tham so 
			
			ps.setString(1,model.getCateName());
			ps.setString(2,model.getImage());
			ps.setInt(3, model.getCateID());
			ps.executeUpdate(); // thuc thi cau query
			
			//ket noi du lieu 
			//truy van du lieu 
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
	}

}
