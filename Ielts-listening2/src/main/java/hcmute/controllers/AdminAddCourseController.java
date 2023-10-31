package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import hcmute.DAO.ITopicTestDAO;
import hcmute.entity.MockTest;
import hcmute.entity.TopicTest;

import hcmute.services.IMockTestService;
import hcmute.services.ITopicTestService;

import hcmute.services.MockTestServiceImpl;
import hcmute.services.TopicTestServiceImpl;
import hcmute.utils.Constants;
import hcmute.utils.UploadUtils;

@MultipartConfig
@WebServlet(urlPatterns = {"/admin/listTopic", "/admin/addTopic"})
public class AdminAddCourseController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	ITopicTestService topicService = new TopicTestServiceImpl();
	IMockTestService mockService = new MockTestServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("listTopic")) {
			List<MockTest> listMocktest = mockService.getAllMockTest();
			req.setAttribute("listMocktest", listMocktest);
			
			List<TopicTest> topicList = topicService.getAllTopicTest();
			req.setAttribute("topicList", topicList);
			RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/admin_taobode.jsp");
			rd.forward(req, resp);
		} else if(url.contains("addTopic")) {
			
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//lấy dữ liệu từ trang jsp bằng BeanUltis:
		TopicTest topic = new TopicTest();
		try {
			//lấy các trường 'name' được khai báo trong addProduct.jsp để ánh xạ qua các trường trong ProductModel
			//vì vậy cần đặt các 'name' giống với các trường trong Model để ánh xạ chính xác
			//BeanUtils.populate(topic, req.getParameterMap());
			topic.setTopicName(req.getParameter("topicName"));
			topic.setDescription(req.getParameter("description"));
			topic.setTopicId("ID");
			//xử lí imgLink
			//kiem tra truong 'imgLink' co hay khong
			if(req.getPart("image").getSize() != 0) {
				//tạo tên file mới để khỏi bị trùng
				String fileName = "" + System.currentTimeMillis();
				topic.setImage(UploadUtils.processUpload("image", req, Constants.DIR + "\\topicIMG\\", fileName));
			}
			//prod.setCategory(cateService.findOne(prod.getProductID()));
			topicService.addTopic(topic);
			
			req.setAttribute("topic", topic);
			req.setAttribute("messSuccess", "Thanh cong");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("messError", e.getMessage());
		}
		
		//resp.sendRedirect(req.getContextPath()+"/listProducts");
		RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/admin_taobode.jsp");
		rd.forward(req, resp);
	}
}
