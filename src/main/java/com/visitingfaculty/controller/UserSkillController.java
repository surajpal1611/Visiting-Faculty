package com.visitingfaculty.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserSkillController {
    
    @GetMapping(value="/get-soft-skill-options")
    @ResponseBody
    public ResponseEntity<String> recieveSoftSkill() {

        return new ResponseEntity<String>("Inserted Successfully", HttpStatus.OK);
    }


}
