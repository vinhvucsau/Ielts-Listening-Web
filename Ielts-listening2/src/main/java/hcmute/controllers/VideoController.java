package hcmute.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hcmute.utils.Constants;

/**
 * Servlet implementation class ShowVideo
 */
@WebServlet("/Video")
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filePara = request.getParameter("file");
		String dir = Constants.DIR + "\\courseTrailer\\";

		response.setContentType("video/mp4");
		ServletOutputStream output = response.getOutputStream();
		FileInputStream fin = new FileInputStream(dir + filePara);

		byte[] buf = new byte[4096];
		int read;
		while ((read = fin.read(buf)) != -1) {
			output.write(buf, 0, read);
		}
		fin.close();
		output.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
