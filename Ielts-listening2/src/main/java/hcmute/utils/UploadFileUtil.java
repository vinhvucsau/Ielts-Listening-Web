package hcmute.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.FilenameUtils;

import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;
import software.amazon.awssdk.services.s3.model.PutObjectResponse;

public class UploadFileUtil {
    private static final String BUCKET_NAME = "imageweblisten"; // Replace with your bucket name
    private static final String AWS_ACCESS_KEY = "AKIA2CDQUSHZ3OO2D57M"; // Replace with your access key
    private static final String AWS_SECRET_KEY = "S4/5frr3JE3JCdQ9iyt224RUTa8rzpR2v29F3W6+"; // Replace with your secret key

    public static String processUpload(String fileName, HttpServletRequest req, String storeFolder,
            String storeFileName) throws ServletException, IOException {
        Part filePart = req.getPart(fileName);
        if (filePart == null || filePart.getSize() == 0) {
            return "";
        }
        if (storeFolder == null) {
            storeFolder = Constants.DIR;
        }
        if (storeFileName == null) {
            storeFileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        } else {
            storeFileName += "." + FilenameUtils.getExtension(
                    Paths.get(filePart.getSubmittedFileName()).getFileName().toString());
        }

        AwsBasicCredentials awsCredentials = AwsBasicCredentials.create(AWS_ACCESS_KEY, AWS_SECRET_KEY);
        StaticCredentialsProvider credentialsProvider = StaticCredentialsProvider.create(awsCredentials);

        S3Client s3Client = S3Client.builder()
                .region(Region.US_EAST_2)
                .credentialsProvider(credentialsProvider)
                .build();

        try {
            Path tempFile = Files.createTempFile("temp", null);
            filePart.write(tempFile.toAbsolutePath().toString());

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