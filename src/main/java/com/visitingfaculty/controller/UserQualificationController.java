package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.model.user_qualification.UserQualification;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserQualificationController {

    @Autowired jsoncheck jsoncheck;
    
    @PostMapping(value="/insert-qualification-details")
    public ResponseEntity<?> insert(@RequestBody String qualificationTableData) 
    {
        System.out.println("qualificationTableData"+qualificationTableData);
        Boolean lasecheck = jsoncheck.qualificationCheck(qualificationTableData);
        if(lasecheck == false)
        {
            System.out.println("Error");
            //return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            return new ResponseEntity<String>("Inserted qualification Successfully", HttpStatus.LENGTH_REQUIRED);
        }
        //return ResponseEntity.status(HttpStatus.OK).build();
        return new ResponseEntity<String>("Inserted qualification Successfully", HttpStatus.OK);
    }

}
