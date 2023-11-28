package hcmute.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import hcmute.DAO.AccountDAOImpl;
import hcmute.DAO.UserDAOImpl;
import hcmute.entity.Account;
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;
import hcmute.utils.Constants;
import hcmute.utils.DeleteImage;
import hcmute.utils.UploadUtils;

@MultipartConfig (fileSizeThreshold = 1024*1024*10, maxFileSize = 1024*1024*50, maxRequestSize = 1024*1024*50)
@WebServlet(urlPatterns = { "/user-capnhattaikhoan", "/user-capnhatmatkhau" })
public class CapNhatThongTinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService = new UserServiceImpl();
	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		
		//Set cứng ID để test chức năng
		String id = "UserId1005";
		User user = findUserById(id);
		Account account = accountService.findByID(user.getAccount().getUserName());
		
		req.setAttribute("currentUser", user);
		req.setAttribute("account", account);
		
		if (url.contains("capnhattaikhoan")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhattaikhoan.jsp");
			rd.forward(req, resp);
		} else if (url.contains("capnhatmatkhau")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhatmatkhau.jsp");
			rd.forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();

		if (url.contains("capnhattaikhoan")) {
			UpdateInfo(req, resp);
		} else if (url.contains("capnhatmatkhau")) {
			UpdatePass(req, resp);
		}
	}

	private void UpdatePass(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			//Set cứng ID để test chức năng
			User user = userService.findUserByID("UserId1005");
			Account account = accountService.findByID(user.getAccount().getUserName());
			
			String oldPass = req.getParameter("inputOldPass").trim();
			String newPass = req.getParameter("inputNewPass").trim();
			String confirmPass = req.getParameter("inputNewPassConfirm").trim();
			String accPass = account.getPassWord().trim();
			
			if (oldPass.equals(accPass) && newPass.equals(confirmPass)) {
				account.setPassWord(newPass);
			}
			
			accountService.update(account);
			
			req.setAttribute("account", account);
			req.setAttribute("message", "Cập nhật thành công!");
			
			resp.sendRedirect(req.getContextPath() + "/user-capnhatmatkhau");

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}

	}

	private void UpdateInfo(HttpServletRequest req, HttpServletResponse resp) {
		//User user = new User();
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			//Set cứng ID để test chức năng
			User user = userService.findUserByID("UserId1005");
			
			String name = req.getParameter("inputName");
			String phoneNumber = req.getParameter("inputPhone");
			String email = req.getParameter("inputEmail");
			String address = req.getParameter("inputAddress");
			String dateOfBirth = req.getParameter("datePicker");
			String networth = req.getParameter("inputNetworth");
			Integer currentNetworth = 0;
			boolean check = networth.equals("");
			
			if (req.getPart("inputImage").getSize() == 0) {
				user.setImage(user.getImage());
			} else {
				//xoa anh cu
				if (user.getImage() != null) {
					String fileImg = user.getImage();
					DeleteImage.deleteImage(user.getImage(), Constants.FOLDER_AVATAR);
				}
				//update anh moi
				String fileName = "" + System.currentTimeMillis();
				user.setImage(UploadUtils.processUpload("inputImage", req, Constants.DIR + "\\"+ Constants.FOLDER_AVATAR +"\\", fileName));
			}
		
			if (dateOfBirth == "") {
				dateOfBirth = null;
			}
			
			if (user.getNetworth() != null) {
				if (check == false) {
					currentNetworth = user.getNetworth() + Integer.parseInt(networth);
				} else {
					currentNetworth = user.getNetworth();
				}
			} else {
				if (check == false) {
					currentNetworth = Integer.parseInt(networth);
				}
			}
			
			user.setName(name);
			user.setPhoneNumber(phoneNumber);
			user.setEmail(email);
			user.setAddress(address);
			user.setDateOfBirth(dateOfBirth);
			user.setNetworth(currentNetworth);
			
			userService.update(user);

			req.setAttribute("currentUser", user);
			req.setAttribute("message", "Cập nhật thành công!");
			
			resp.sendRedirect(req.getContextPath() + "/user-capnhattaikhoan");

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
	}

	private User findUserById(String id) {
		User user = userService.findUserByID(id);
		return user;
	}
}
