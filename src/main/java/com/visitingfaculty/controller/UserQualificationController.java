package com.visitingfaculty.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.model.user_qualification.UserQualification;

@RestController
public class UserQualificationController {
    
    @PostMapping(value="/insert-qualification-details")
    public ResponseEntity<String> insert(@RequestBody UserQualification qualificationTableData) {

        return new ResponseEntity<String>("Inserted qualification Successfully", HttpStatus.OK);
    }

}
