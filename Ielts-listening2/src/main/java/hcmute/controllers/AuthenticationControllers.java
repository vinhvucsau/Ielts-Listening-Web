package hcmute.controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.entity.Account;
import hcmute.services.AccountServiceImpl;
import hcmute.services.IAccountServices;


@WebServlet(urlPatterns = { "/authentication/login", "/authentication/signup" })
public class AuthenticationControllers extends HttpServlet {
	
	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
			rd.forward(req, resp);
		} else if (url.contains("signup")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/signUp.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if(url.contains("signup")) {
			SignUp(req, resp);
		}
	}

	private void SignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		/*
		 * try {
		 * 
		 * req.setCharacterEncoding("UTF-8");
		 * 
		 * resp.setCharacterEncoding("UTF-8");
		 * 
		 * Account account = new Account(); String userName =
		 * req.getParameter("userName"); String passWord = req.getParameter("passWord");
		 * account.setUserName(userName); account.setPassWord(passWord);
		 * 
		 * // sử dụng BeanUtils để tự lấy các name Field trên form // tên field phải
		 * trùng với entity //BeanUtils.populate(account, req.getParameterMap());
		 * 
		 * 
		 * accountService.SignUp(account);
		 * 
		 * // thông báo
		 * 
		 * req.setAttribute("message", "Đã thêm thành công");
		 * 
		 * } catch (Exception e) {
		 * 
		 * e.printStackTrace();
		 * 
		 * req.setAttribute("error", "Eror: " + e.getMessage()); }
		 */
		
		String userName = req.getParameter("userName");
        String passWord = req.getParameter("passWord");

        Account account = new Account();
        account.setUserName(userName);
        account.setPassWord(passWord);

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("IeltsListeningWeb");
        EntityManager em = emf.createEntityManager();

        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            em.persist(account);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            throw e;
        } finally {
            em.close();
            emf.close();
        }

		
		
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/authentication/login.jsp");
		rd.forward(req, resp);
	}

	private static final long serialVersionUID = 1L;

}
