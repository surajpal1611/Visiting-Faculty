package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;

@RestController
public class UserSkillController {

    @Autowired
    UserDaoInterface userDaoInterface;
    
    @GetMapping(value="/get-soft-skill-options")
    @ResponseBody
    public ResponseEntity<String> recieveSoftSkill() {

        return new ResponseEntity<String>("Inserted Successfully", HttpStatus.OK);
    }

    @PostMapping("/insert-all-skills")
    public ResponseEntity<?> insertAllSkills(@RequestBody String skills) {

        System.out.println(skills);
        Object insertSkills = userDaoInterface.insertAllSkills(skills);
        // Object updateSkills = userDaoInterface.updateAllSkills(skills);
        // System.out.println(updateSkills);

        return ResponseEntity.status(HttpStatus.OK).build();

    }

}
