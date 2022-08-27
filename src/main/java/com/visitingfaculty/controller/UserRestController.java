package com.visitingfaculty.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.dto.UserDto;
import com.visitingfaculty.model.user_skills.UserSkillsFromDB;
import com.visitingfaculty.service.faculty_service.UserService;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserRestController {

    @Autowired
    UserService userService;

    @Autowired
    jsoncheck jsonchk;

    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value = "/insert-personal-details")
    public ResponseEntity<?> insertPersonalDetails(@RequestBody String personalDetailsData) {
        Boolean check =  jsonchk.UserJsonCheck(personalDetailsData);
        if(check == true)
           {
             Object insertPersonalDetails = userDaoInterface.updatePersonalDetails(personalDetailsData);
             if (insertPersonalDetails == null) 
                {
                    return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
                }
              return ResponseEntity.ok("Inserted Successfully");
            }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }       
    }

    @PostMapping("/verify-login")
    public ResponseEntity<?> verifyUserLogin(@RequestBody UserDto userDto, HttpSession httpSession) {

        // if user not exist then we will generatae a random 6 digit token for
        // verification
        System.out.println(userDto);

        int tokenGenerated = (int) Math.floor(100000 + Math.random() * 900000);
        httpSession.setAttribute("tokenGenerated", tokenGenerated);

        String message = "Please Enter this code to verify your email: " + tokenGenerated;

        if (userService.sendEmail(message, userDto.getEmail())) {

            return ResponseEntity.ok("otp send successfully");

        } else {

            return null;
        }

    }

    @PostMapping("/verify-token")
    public ResponseEntity<?> verifyToken(@RequestBody String token, HttpSession httpSession) {

        int tokenToVerify = Integer.parseInt(token);
        int tokenGenerated = (int) httpSession.getAttribute("tokenGenerated");
        // String tokenValidation = (String) httpSession.getAttribute("tokenGenerated");

        if (tokenGenerated != tokenToVerify) {
            return null;
        }
        return ResponseEntity.ok("verification success");
    }

    @PostMapping("/get-all-skill")
    public List<UserSkillsFromDB> getAllSkills() {

        List<UserSkillsFromDB> list = userDaoInterface.getAllSkills();
        return list;
    }

    @PostMapping("/insert-custom-skill")
    public UserSkillsFromDB insertCustomSkill(UserSkillsFromDB userSkillsFromDB) {

        int insertSkill = userDaoInterface.insertCustomSkill(userSkillsFromDB);
        if (insertSkill == 1) {

            UserSkillsFromDB userSkill = userDaoInterface.getUserSkill(userSkillsFromDB.getSkill_name());

            return userSkill;

        } else {

            return null;
        }

    }
}
