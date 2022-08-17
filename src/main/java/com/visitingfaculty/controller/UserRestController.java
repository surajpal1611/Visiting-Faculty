package com.visitingfaculty.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dto.UserPersonalDetailsDTO;

@RestController
public class UserRestController {
    

    @PostMapping(value="/insert-personal-details", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> insert(@RequestBody UserPersonalDetailsDTO personalDetailsData) {

        System.out.println(personalDetailsData);
        return new ResponseEntity<String>("Inserted Successfully", HttpStatus.OK);
    }
}
