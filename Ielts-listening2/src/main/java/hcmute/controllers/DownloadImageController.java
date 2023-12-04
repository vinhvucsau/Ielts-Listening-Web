package hcmute.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.OutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

import hcmute.utils.Constants;

@WebServlet(urlPatterns = {"/image"})
public class DownloadImageController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fileName = req.getParameter("fname");
		File file = new File(Constants.DIR + "/" + fileName);
		String url = req.getRequestURI().toString();
		if(file.exists()) {
			if (url.contains("image")) {
				resp.setContentType("image/jpeg");
				IOUtils.copy(new FileInputStream(file), resp.getOutputStream());
			} else if (url.contains("audio")) {
				resp.setContentType("audio/mpeg");
				resp.setHeader("Content-Disposition", "inline; filename=\"" + file.getName() + "\"");
				// Hỗ trợ Range Requests
	            resp.setHeader("Accept-Ranges", "bytes");
	            
	            // Xác định kích thước file
	            long fileSize = file.length();
	            
	            // Lấy Range từ yêu cầu
	            String rangeHeader = req.getHeader("Range");
	            
	            if (rangeHeader != null) {
	                // Parse Range Header
	                String[] range = rangeHeader.substring("bytes=".length()).split("-");
	                long start = Long.parseLong(range[0]);
	                long end = (range.length > 1 && !range[1].isEmpty()) ? Long.parseLong(range[1]) : (long) (fileSize - 1);
	                
	                // Thiết lập Content-Range header
	                resp.setHeader("Content-Range", "bytes " + start + "-" + end + "/" + fileSize);
	                
	                // Thiết lập kích thước phần nội dung trả về
	                resp.setContentLengthLong((end - start) + 1);
	                req.getAttributeNames();
	                req.getAttribute(fileName);
	                // Đọc và ghi phần nội dung được yêu cầu vào output stream của response
	                try (FileInputStream in = new FileInputStream(file)) {
	                    byte[] buffer = new byte[1024*4];
	                    int bytesRead;
	                    while ((start < end) && ((bytesRead = in.read(buffer)) != -1)) {
	                        resp.getOutputStream().write(buffer, 0, bytesRead);
	                        start += bytesRead;
	                    }
	                }
	            } else {
	                // Trường hợp không có Range Request, gửi toàn bộ nội dung
	                resp.setContentLengthLong(fileSize);
	                try (FileInputStream in = new FileInputStream(file)) {
	                    byte[] buffer = new byte[1024*4];
	                    int bytesRead;
	                    while ((bytesRead = in.read(buffer)) != -1) {
	                        resp.getOutputStream().write(buffer, 0, bytesRead);
	                    }
	                }
	            }
			}
		}
		
	}

}
