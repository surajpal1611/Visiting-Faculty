package com.visitingfaculty.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.model.user_publication.UserPublication;

@RestController
public class UserPublicationController {

    @PostMapping(value="/insert-publication-details")
    public ResponseEntity<String> insert(@RequestBody String publicationTableData) 
    {
        System.out.println("Publication Json : "+publicationTableData);
        return new ResponseEntity<String>("Inserted publication Successfully", HttpStatus.OK);
    }
    
}
