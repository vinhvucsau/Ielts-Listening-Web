package hcmute.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import hcmute.models.CategoryModels;
import hcmute.services.CategoryServiceImpl;
import hcmute.services.ICategoryService;

@WebServlet(urlPatterns = {"/listCate","/addcate","/update","/delete"})
public class CatetoryControllers extends HttpServlet{
	//goi cac phuong thuc trong service 
	ICategoryService cateService = new CategoryServiceImpl();
	
	private static final long serialVersionUID = 6208441821019349197L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url =req.getRequestURI().toString();
		if(url.contains("listCate"))
		{
		findAll(req,resp);
		} else if (url.contains("addcate"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/views/addCategory.jsp");
			rd.forward(req, resp);
			
		}else if (url.contains("update"))
		{
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			//nham du lieu tu views
			
			int id= Integer.parseInt(req.getParameter("id")) ;
			//goi phuong thuc findOne trong service
			CategoryModels model = cateService.findOne(id);
			//day du lieu len views 
			req.setAttribute("cate", model);
			RequestDispatcher rd = req.getRequestDispatcher("/views/updateCategory.jsp");
			rd.forward(req, resp);
			
		}else if (url.contains("delete"))
		{
			//nham du lieu tu views
			
			int id= Integer.parseInt(req.getParameter("id")) ;
			//goi phuong thuc findOne trong service
			cateService.delete(id);
			//day du lieu len views 
			req.setAttribute("message","Da xoa thanh cong");
			RequestDispatcher rd = req.getRequestDispatcher("listCate");
			rd.forward(req, resp);
		}
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if(url.contains("addcate"))
		{
			insert(req,resp);
		}else if(url.contains("update"))
		{
			update(req,resp);
		}
	}

	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// thiet lap ngon ngu tieng t
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		// nhan du lieu tu form 
		int id =Integer.parseInt(req.getParameter("cateID"));
		String cateName = req.getParameter("cateName");// tên từ name trong input
	    String images = req.getParameter("images");
	    CategoryModels cate = new CategoryModels();
	    cate.setCateName(cateName);
	    cate.setImage(images);
	    cate.setCateID(id);
	    // goi phuong thuc insert trong services 
	    cateService.update(cate);
	    //tra ve views
	    
	   resp.sendRedirect(req.getContextPath()+"/listCate");
		
	}
	private void insert(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// thiet lap ngon ngu tieng t
				req.setCharacterEncoding("UTF-8");
				resp.setCharacterEncoding("UTF-8");
				
				// nhan du lieu tu form 
				
				String cateName = req.getParameter("cateName");// tên từ name trong input
			    String images = req.getParameter("images");
			    
			    CategoryModels cate = new CategoryModels();
			    cate.setCateName(cateName);
			    cate.setImage(images);
			    // goi phuong thuc insert trong services 
			    cateService.insert(cate);
			    //tra ve views
			    
			   resp.sendRedirect(req.getContextPath()+"/listCate");
		
	}
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<CategoryModels> listCate = cateService.findAll();
		// day du lieu ra view 
		req.setAttribute("list", listCate);
		//view nhan du lieu
		RequestDispatcher rd = req.getRequestDispatcher("/views/listCategory.jsp");
		rd.forward(req, resp);
		
		
	}
}
