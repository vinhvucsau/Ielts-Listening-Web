package hcmute.controllers;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import software.amazon.awssdk.core.ResponseBytes;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.GetObjectRequest;
import software.amazon.awssdk.services.s3.model.GetObjectResponse;

@WebServlet(urlPatterns = { "/image", "/audio", "/video" })
public class DownloadImageController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String BUCKET_NAME = "imageweblisten"; // Thay thế bằng tên bucket của bạn
    private static final Region REGION = Region.US_EAST_2; // Thay thế bằng region tương ứng với bucket của bạn

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = req.getParameter("fname");
        String file = "ImagesWeb" + "/" + fileName;
        String url = req.getRequestURI().toString();

        S3Client s3Client = S3Client.builder().region(REGION).build();

        try {
            GetObjectRequest getObjectRequest = GetObjectRequest.builder()
                    .bucket(BUCKET_NAME)
                    .key(file)
                    .build();

            ResponseBytes<GetObjectResponse> objectBytes = s3Client.getObjectAsBytes(getObjectRequest);
            InputStream inputStream = objectBytes.asInputStream();

            if (url.contains("image")) {
                resp.setContentType("image/jpeg");
            } else if (url.contains("audio")) {
                resp.setContentType("audio/mpeg");
            } else if (url.contains("video")) {
                resp.setContentType("video/mp4");
            }

            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                resp.getOutputStream().write(buffer, 0, bytesRead);
            }

            inputStream.close();
            resp.getOutputStream().flush();
        } catch (Exception e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            resp.getWriter().println("<html><body><p>NOT FOUND</p></body></html>");
        } finally {
            s3Client.close();
        }
    }
}