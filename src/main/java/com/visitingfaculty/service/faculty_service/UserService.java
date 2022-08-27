package com.visitingfaculty.service.faculty_service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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

    public boolean uploadPersonalDetailsFile(List<MultipartFile> files,String user_id) {

        for (int i = 0; i < files.size(); i++) {

            String filename = user_id + files.get(i).getOriginalFilename();

            Path fileNameAndPath = Paths.get(uploadDirectory, filename);

            try {
                Files.write(fileNameAndPath, files.get(i).getBytes());
                return true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
