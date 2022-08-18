package com.visitingfaculty.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.visitingfaculty.configuration.EmailConfiguration;
import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.EmailTokenModel;

@Service
public class EmailService {
    
    @Autowired
    EmailConfiguration configuration;

    @Autowired
    UserDaoInterface daoInterface;

    public String emailSender(String toEmail, EmailTokenModel emailTokenModel) {

        
        String body = "Use This Code to verify your Email: " + emailTokenModel.getToken();
        String subject = "Please Verify Your Email";

        configuration.sendEmail(toEmail, body, subject);

        return "email sent successfully";
    }

    public String emailverification(Integer token, EmailTokenModel emailTokenModel) {

        if (emailTokenModel.getToken() == token) {
            daoInterface.
        }

    }

    
}
