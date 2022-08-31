package com.visitingfaculty.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.dto.UserDto;
import com.visitingfaculty.model.user_skills.UserSkillsFromDB;
import com.visitingfaculty.service.PasswordService;
import com.visitingfaculty.service.faculty_service.UserService;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserRestController {

    @Autowired
    UserService userService;

    @Autowired
    jsoncheck jsonchk;

    @Autowired
    PasswordService passwordService;

    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value = "/insert-personal-details")
    public ResponseEntity<?> insertPersonalDetails(@RequestBody String personalDetailsData) {

        Boolean check = jsonchk.UserJsonCheck(personalDetailsData, "EOLPS0161D");
        if (check == true) {
            Object insertPersonalDetails = userDaoInterface.updatePersonalDetails(personalDetailsData);
            if (insertPersonalDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            return ResponseEntity.ok("Inserted Successfully");
        } else {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @PostMapping("/verify-registration")
    public ResponseEntity<?> verifyUserRegistration(@RequestBody UserDto userDto, HttpSession httpSession) {

        // if user not exist then we will generatae a random 6 digit token for
        // verification
        System.out.println(userDto);

        httpSession.setAttribute("user_id", userDto.getUser_id());

        int tokenGenerated = (int) Math.floor(100000 + Math.random() * 900000);
        httpSession.setAttribute("tokenGenerated", tokenGenerated);

        String message = "Please Enter this code to verify your email: " + tokenGenerated;

        if (userService.sendEmail(message, userDto.getEmail())) {

            return ResponseEntity.status(HttpStatus.OK).build();

        } else {

            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

    }

    @PostMapping("/verify-token")
    public ResponseEntity<?> verifyToken(@RequestBody String token, HttpSession httpSession) {

        int tokenToVerify = Integer.parseInt(token);
        int tokenGenerated = (int) httpSession.getAttribute("tokenGenerated");
        // String tokenValidation = (String) httpSession.getAttribute("tokenGenerated");

        if (tokenGenerated != tokenToVerify) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        return ResponseEntity.ok("success");
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

    // @PostMapping("/verify-password")
    // public boolean passwordVerificationTest(@RequestBody String password) {

    //     boolean password_hash = passwordService.verifyPassword("$argon2i$v=19$m=65536,t=22,p=1$IgVmDdUI0nslYj6gsRrGyA$Zvb8lsykt3BN/VQ4PkUrTJSfuNscDaHLV57I3MSeC7M",password);
    //     System.out.println(password_hash);
    //     return password_hash;
    // }

}
