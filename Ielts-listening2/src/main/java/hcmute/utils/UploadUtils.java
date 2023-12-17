package hcmute.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.FilenameUtils;

import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;
import software.amazon.awssdk.services.s3.model.PutObjectResponse;

public class UploadUtils {
    private static final String BUCKET_NAME = "imageweblisten"; // Replace with your bucket name
    private static final String AWS_ACCESS_KEY = "AKIA2CDQUSHZ3OO2D57M";
    private static final String AWS_SECRET_KEY = "S4/5frr3JE3JCdQ9iyt224RUTa8rzpR2v29F3W6+";

    public static String processUpload(String fileName, HttpServletRequest req, String storeFolder,
            String storeFileName) throws ServletException, IOException {
        Part filePart = req.getPart(fileName);
        if (filePart == null || filePart.getSize() == 0) {
            return "";
        }
        if (storeFileName == null) {
            storeFileName = FilenameUtils.getBaseName(filePart.getSubmittedFileName()) + "." +
                    FilenameUtils.getExtension(filePart.getSubmittedFileName());
        } else {
            storeFileName += "." + FilenameUtils.getExtension(filePart.getSubmittedFileName());
        }

        AwsBasicCredentials awsCredentials = AwsBasicCredentials.create(AWS_ACCESS_KEY, AWS_SECRET_KEY);

        S3Client s3Client = S3Client.builder()
                .region(Region.US_EAST_2)
                .credentialsProvider(() -> awsCredentials)
                .build();

        try {
            Path tempFile = Files.createTempFile("temp", null);
            try (var inputStream = filePart.getInputStream()) {
                Files.copy(inputStream, tempFile, StandardCopyOption.REPLACE_EXISTING);
            }

            PutObjectRequest putObjectRequest = PutObjectRequest.builder()
                    .bucket(BUCKET_NAME)
                    .key(storeFolder + storeFileName)
                    .build();

            PutObjectResponse response = s3Client.putObject(putObjectRequest, tempFile);

            System.out.println("File uploaded successfully. ETag: " + response.eTag());
        } catch (Exception e) {
            System.err.println("Error uploading file: " + e.getMessage());
        } finally {
            s3Client.close();
        }

        return storeFileName;
    }
}