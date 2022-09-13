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
    public ResponseEntity<String> postResearchMethod(@RequestBody String object) {
        String check = jsoncheck.researchJsonCheck(object);
        System.out.println("Research Data" + check);
        if (check != null) {
            System.out.println("Success");

            Object updateData = userDaoInterface.updateResearch(check);

            if (updateData != null) {

                return new ResponseEntity<String>("Ressearch data inserted", HttpStatus.OK);
            }

            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();

        } else {
            System.out.println("Error");
            return new ResponseEntity<String>("Ressearch data inserted", HttpStatus.BAD_REQUEST);
        }
    }
    
    @PostMapping(value = "/resume-data-insert")
    public ResponseEntity<String> insertResearch(@RequestBody String object)
    {
        String check = jsoncheck.researchJsonCheck(object);
        System.out.println("Research Data" + check);
        if (check != null) {
            System.out.println("Success");

            Object insertData = userDaoInterface.insertResearch(check);

            System.out.println(insertData);
            return new ResponseEntity<String>("Ressearch data inserted", HttpStatus.OK);
        } else {
            System.out.println("Error");
            return new ResponseEntity<String>("Ressearch data inserted", HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping("/delete-research")
    public ResponseEntity<?> deleteResearch(@RequestBody String id) {
        System.out.println(id);

        int deletedRows = userDaoInterface.deleteresearch(Integer.parseInt(id));
        if (deletedRows == 1) {
            return ResponseEntity.status(HttpStatus.OK).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
