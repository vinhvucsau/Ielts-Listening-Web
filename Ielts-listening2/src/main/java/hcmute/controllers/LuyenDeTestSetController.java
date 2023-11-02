package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.DAO.IMockTestDAO;
import hcmute.entity.MockTest;
import hcmute.services.EnrollTestServiceImpl;
import hcmute.services.IEnrollTestService;
import hcmute.services.IMockTestService;
import hcmute.services.MockTestServiceImpl;

@WebServlet(urlPatterns = { "/user/luyende/testset" })



public class LuyenDeTestSetController extends HttpServlet{

	IMockTestService mockTestService = new MockTestServiceImpl();
	IEnrollTestService enrollTestService =new EnrollTestServiceImpl();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String url = req.getRequestURI().toString();
		if (url.contains("testset")) {
			findAll(req, resp);
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/luyende/luyende_testset.jsp");
			rd.forward(req, resp);
		} 
	}
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			
			List<MockTest> listMocktest = mockTestService.getMockTestByTopicId("Topic1006");
			System.out.print(listMocktest);
			req.setAttribute("listMocktest", listMocktest);
			
			List<EnrrolTest> listEnrolltest = enrollTestService.findById("UserId1002");
			System.out.print(listEnrolltest);
			req.setAttribute("listEnrolltest", listEnrolltest);
		}
		catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());

		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}

