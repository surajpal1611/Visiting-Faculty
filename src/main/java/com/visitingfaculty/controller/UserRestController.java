package com.visitingfaculty.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dto.UserDto;
import com.visitingfaculty.dto.UserPersonalDetailsDTO;
import com.visitingfaculty.service.faculty_service.UserService;

@RestController
public class UserRestController {

    @Autowired
    UserService userService;

    @PostMapping(value="/insert-personal-details", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> insert(@RequestBody UserPersonalDetailsDTO personalDetailsData) {

        System.out.println(personalDetailsData);
        return ResponseEntity.ok("Inserted Successfully");
    }

    @PostMapping("/verify-login")
    public ResponseEntity<?> verifyUserLogin(@RequestBody UserDto userDto,HttpSession httpSession) {

        //if user not exist then we will generatae a random 6 digit token for verification
        System.out.println(userDto);

        int tokenGenerated = (int) Math.floor(100000 + Math.random() * 900000);
        httpSession.setAttribute("tokenGenerated", tokenGenerated);

        String message = "Please Enter this code to verify your email: " + tokenGenerated;

        if(userService.sendEmail(message, userDto.getEmail())) {
            
            return ResponseEntity.ok("otp send successfully");

        } else {

            return null;
        }

    }

    @PostMapping("/verify-token")
    public ResponseEntity<?> verifyToken(@RequestBody String token, HttpSession httpSession) {

        System.out.println(token);
        int tokenToVerify = Integer.parseInt(token);
        int tokenGenerated = (int) httpSession.getAttribute("tokenGenerated");
        String tokenValidation = (String) httpSession.getAttribute("tokenGenerated");

        if (tokenValidation == null) {
            return null;
        }
        if (tokenGenerated != tokenToVerify) {
            return null;
        }
        return ResponseEntity.ok("verification success");
    }
}
