package hcmute.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

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
		resp.setContentType("image/jpeg");
		if(file.exists()) {
			IOUtils.copy(new FileInputStream(file), resp.getOutputStream());
		}
		
	}

}
