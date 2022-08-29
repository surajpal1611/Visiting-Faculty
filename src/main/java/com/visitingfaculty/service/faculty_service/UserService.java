package com.visitingfaculty.service.faculty_service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UserService {

    public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/imagedata";

    @Autowired
    private JavaMailSender javaMailSender;

    @Value("${spring.mail.username}")
    private String fromEmail;

    public boolean sendEmail(String message, String toEmail) {

        String subject = "Verify Your Email Adddress";

        try {

            SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

            simpleMailMessage.setTo(toEmail);
            simpleMailMessage.setFrom(fromEmail);
            simpleMailMessage.setSubject(subject);
            simpleMailMessage.setText(message);

            javaMailSender.send(simpleMailMessage);
            return true;

        } catch (Exception e) {
            return false;
        }
    }

    public String uploadPersonalDetailsFile(String base64String, String user_id) {

        String filename = user_id;

        String newFile = base64String.substring(base64String.indexOf(",") + 1);

        Path destinationFile = Paths.get(uploadDirectory, filename + ".jpg");

        byte[] data = Base64.getDecoder()
                        .decode(newFile.getBytes(StandardCharsets.UTF_8));

        try {
            Files.write(destinationFile, data);
            return filename;
        } catch (IOException e) {
           
            e.printStackTrace();
            return null;

        }
    }
}
