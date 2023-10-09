package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import hcmute.models.ProductModel;
import hcmute.services.IProductService;
import hcmute.services.ProductServiceImpl;
@WebServlet(urlPatterns = {"/listProduct","/find"})
public class ProductControllers extends HttpServlet{

	private static final long serialVersionUID = 9138593353882158248L;
	IProductService productService = new ProductServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("listProduct")) {
			findAll(req, resp);
		} else if (url.contains("find")) {
			int id = Integer.parseInt(req.getParameter("id"));
			List<ProductModel> products = productService.findProductByCategory(id);
			req.setAttribute("list", products);
			RequestDispatcher rd = req.getRequestDispatcher("/views/listProduct.jsp");
			rd.forward(req, resp);
		}
		
	}
private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<ProductModel> listProduct = productService.findAll();
		req.setAttribute("list", listProduct);
		RequestDispatcher rd = req.getRequestDispatcher("/views/listProduct.jsp");
		rd.forward(req, resp);
		
	}
}
