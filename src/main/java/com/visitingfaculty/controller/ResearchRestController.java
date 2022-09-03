package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class ResearchRestController {

    @Autowired
    jsoncheck jsoncheck;

    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value = "/research-table-data")
    public ResponseEntity<String> postResearchMethod(@RequestBody String object)
    {
        String check = jsoncheck.researchJsonCheck(object);
        System.out.println("Research Data"+ check);
        if(check != null)
        {
            System.out.println("Success");

            Object insertData = userDaoInterface.insertResearch(check);
            // Object insertData = userDaoInterface.updateResearch(object);

            System.out.println(insertData);
            return new ResponseEntity<String>("Ressearch data inserted",HttpStatus.OK);
        }
        else
        {
            System.out.println("Error");
            return new ResponseEntity<String>("Ressearch data inserted",HttpStatus.BAD_REQUEST);
        }
    }
}

