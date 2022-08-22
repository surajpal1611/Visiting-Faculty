package com.visitingfaculty.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ResearchRestController {
    @PostMapping(value = "/research_Table_Data")
    public ResponseEntity<String> postResearchMethod(@RequestBody String object)
    {
        System.out.println("Research Data"+object);
        // return new ResponseEntity<String>("Inserted Successfully", HttpStatus.OK);
        return new ResponseEntity<String>("Ressearch data inserted",HttpStatus.OK);
    }
}
