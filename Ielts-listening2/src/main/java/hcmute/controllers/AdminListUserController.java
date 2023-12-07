package hcmute.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
<<<<<<< HEAD
import javax.servlet.annotation.MultipartConfig;
=======
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import javax.servlet.http.HttpSession;

import hcmute.entity.Account;
=======

>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
import hcmute.entity.User;
import hcmute.services.AccountServiceImpl;
import hcmute.services.AdminListUserServiceImpl;
import hcmute.services.IAccountServices;
import hcmute.services.IAdminListUserService;
import hcmute.services.IUserService;
import hcmute.services.UserServiceImpl;
import hcmute.utils.Constants;
import hcmute.utils.DeleteImage;
import hcmute.utils.UploadUtils;

@WebServlet(urlPatterns = { "/admin/listUser", "/admin/capnhattaikhoan" })
<<<<<<< HEAD
@MultipartConfig
=======
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
public class AdminListUserController extends HttpServlet {
	IAccountServices accountService = new AccountServiceImpl();
	IAdminListUserService adminService = new AdminListUserServiceImpl();
	IUserService userService = new UserServiceImpl();

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD

=======
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
		String url = req.getRequestURI().toString();
		if (url.contains("admin/listUser")) {
			FindAll(req, resp);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/admin_listUser.jsp");
			rd.forward(req, resp);
<<<<<<< HEAD
		} else if (url.contains("admin/capnhattaikhoan")) {
=======
		}else if(url.contains("admin/capnhattaikhoan")) {
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
			FindById(req, resp);
			RequestDispatcher rd = req.getRequestDispatcher("/views/admin/admin_capnhattaikhoan.jsp");
			rd.forward(req, resp);
		}
	}

	private void FindById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String userId = req.getParameter("userId");
<<<<<<< HEAD
=======
			System.out.print("userId la: " + userId);
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
			User user = adminService.findUserById(userId);

			req.setAttribute("currentUser", user);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
<<<<<<< HEAD

	}

	private void FindAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			List<User> users = adminService.findAllUser();

			req.setAttribute("users", users);
=======
		
	}

	private void FindAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			List<User> users = adminService.findAllUser();

			req.setAttribute("currentUser", users);
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
<<<<<<< HEAD

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("capnhattaikhoan")) {
			UpdateInfo(req, resp);
			resp.sendRedirect(req.getContextPath() + "/admin/listUser");
		}
	}

	private void UpdateInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
=======
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if(url.contains("admin/capnhattaikhoan")) {
			UpdateInfo(req, resp);
			resp.sendRedirect(req.getContextPath() + "/admin/listUser");
			/*
			 * RequestDispatcher rd =
			 * req.getRequestDispatcher("/views/admin/admin_listUser.jsp"); rd.forward(req,
			 * resp);
			 */
		}
	}

	private void UpdateInfo(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			String id = req.getParameter("userId");
<<<<<<< HEAD
			User user = adminService.findUserById(id);

			String name = req.getParameter("inputName").trim();
			String phoneNumber = req.getParameter("inputPhone").trim();
			String email = req.getParameter("inputEmail").trim();
			String address = req.getParameter("inputAddress").trim();
			String dateOfBirth = req.getParameter("datePicker").trim();
			String networth = req.getParameter("inputNetworth").trim();

			Integer currentNetworth = 0;
			boolean check = networth.equals("");

			if (req.getPart("inputImage").getSize() == 0) {
				user.setImage(user.getImage());
			} else { // xoa anh cu
				if (user.getImage() != null) {
					String fileImg = user.getImage();
					DeleteImage.deleteImage(user.getImage(), Constants.FOLDER_AVATAR);
				} // update anh moi
				String fileName = "" + System.currentTimeMillis();
				user.setImage(UploadUtils.processUpload("inputImage", req,
						Constants.DIR + "\\" + Constants.FOLDER_AVATAR + "\\", fileName));
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

			if (userService.findDuplicateEmail(email, id) == false) {
				req.setAttribute("messError", "Email đã được sử dụng!");
			}

			if (phoneNumber.length() == 10 && phoneNumber.matches("[0-9]+")) {
				if (userService.findDuplicatePhone(phoneNumber, id) == false) {
					req.setAttribute("messError", "Số điện thoại đã được sử dụng!");
				}
			} else {
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

			req.setAttribute("currentUser", user);
			req.setAttribute("message", "Cập nhật thành công!");

			RequestDispatcher rd = req.getRequestDispatcher("/views/capnhat/user_capnhattaikhoan.jsp");
			rd.forward(req, resp);
=======

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
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error", "Eror: " + e.getMessage());
		}
<<<<<<< HEAD

=======
		
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
	}
}
