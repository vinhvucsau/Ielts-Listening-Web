package hcmute.controllers;

import java.io.IOException;
import java.io.PrintWriter;

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
import hcmute.utils.compositeId.PasswordEncryptor;

@MultipartConfig (fileSizeThreshold = 1024*1024*10, maxFileSize = 1024*1024*50, maxRequestSize = 1024*1024*50)
@WebServlet(urlPatterns = { "/user/capnhattaikhoan", "/user/capnhatmatkhau", "/user/khoahoccuatoi", "/user/thongkediem" })
public class CapNhatThongTinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IUserService userService = new UserServiceImpl();
	IAccountServices accountService = new AccountServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		
		//Set cứng ID để test chức năng
		String id = req.getParameter("userId");
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
		} else if (url.contains("khoahoccuatoi")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_khoahoccuatoi.jsp");
			rd.forward(req, resp);
		} else if (url.contains("thongkediem")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_thongkediem.jsp");
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
			User user = userService.findUserByID(req.getParameter("userId"));
			Account account = accountService.findByID(user.getAccount().getUserName());
			System.out.print(false);
			String oldPass = req.getParameter("currentpassword").trim();
			String newPass = req.getParameter("newpassword").trim();
			String confirmPass = req.getParameter("confirmpassword").trim();
			String accPass = PasswordEncryptor.decryptPassword(account.getPassWord()).trim();
			
			if (oldPass.equals(accPass)) {
				if (newPass.equals(confirmPass)) {
					account.setPassWord(PasswordEncryptor.encryptPassword(newPass));
				}else {
					req.setAttribute("messError", "Xác nhận mật khẩu mới không thành công!");
				}
			}else {
				req.setAttribute("messError", "Nhập mật khẩu cũ sai!");
			}
			
			accountService.update(account);
			
			req.setAttribute("account", account);
			req.setAttribute("message", "Cập nhật thành công!");
			
			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhatmatkhau.jsp");
			rd.forward(req, resp);
			
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
			String id = req.getParameter("userId");

			//Set cứng ID để test chức năng
			User user = userService.findUserByID(id);
			
			  String name = req.getParameter("inputName").trim(); 
			  String phoneNumber =req.getParameter("inputPhone").trim(); 
			  String email =req.getParameter("inputEmail").trim(); 
			  String address =req.getParameter("inputAddress").trim(); 
			  String dateOfBirth =req.getParameter("datePicker").trim(); 
			  String networth = req.getParameter("inputNetworth").trim();
			  
			  Integer currentNetworth = 0; boolean check = networth.equals("");
			  
			  if (req.getPart("inputImage").getSize() == 0) {
			  user.setImage(user.getImage()); } else { //xoa anh cu 
				  if (user.getImage() !=
			  null) { String fileImg = user.getImage();
			  DeleteImage.deleteImage(user.getImage(), Constants.FOLDER_AVATAR); } //update anh moi 
			  String fileName = "" + System.currentTimeMillis();
			  user.setImage(UploadUtils.processUpload("inputImage", req, Constants.DIR +
			  "\\"+ Constants.FOLDER_AVATAR +"\\", fileName)); }
			  
			  if (dateOfBirth == "") { dateOfBirth = null; }
			  
			  if (user.getNetworth() != null) { if (check == false) { currentNetworth =
			  user.getNetworth() + Integer.parseInt(networth); } else { currentNetworth =
			  user.getNetworth(); } } else { if (check == false) { currentNetworth =
			  Integer.parseInt(networth); } }
			  
			  if (userService.findDuplicateEmail(email, id) == false) {
				  req.setAttribute("messError", "Email đã được sử dụng!");
			  }
			  
			  if (phoneNumber.length() == 10 && phoneNumber.matches("[0-9]+")){
				  if (userService.findDuplicatePhone(phoneNumber, id) == false) {
					  req.setAttribute("messError", "Số điện thoại đã được sử dụng!");
				  }
			  }else {
				  req.setAttribute("messError", "Số điện thoại không hợp lệ!");
			  }
			  
			  if (req.getAttribute("messError") == null) {
				  user.setName(name); 
				  user.setEmail(email);
				  user.setPhoneNumber(phoneNumber);
				  user.setAddress(address); 
				  user.setDateOfBirth(dateOfBirth);
				  user.setNetworth(currentNetworth);
				  userService.update(user);
			  }
			  
			  req.setAttribute("currentUser", user); req.setAttribute("message",
			  "Cập nhật thành công!");
			  
			  RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhattaikhoan.jsp");
			  rd.forward(req, resp);

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
