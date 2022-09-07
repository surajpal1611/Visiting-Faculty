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
public class AwardRestController 
{
    @Autowired jsoncheck jsoncheck;

    @Autowired
    UserDaoInterface service;

    @PostMapping(value="/award_Table_Data")
    public ResponseEntity<?> awardTableData(@RequestBody String resume_achievement)
    {
        String lastcheck = jsoncheck.JsonStringValues(resume_achievement);
        
        if(lastcheck != null)
        {

            Object data = service.updateAward(lastcheck);

            System.out.println(data);
            return ResponseEntity.status(HttpStatus.OK).build();
          
        }
          
        System.out.println("Error");
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
       
    }

    @PostMapping(value="/award_insert")
    public ResponseEntity<?> awardInsert(@RequestBody String resume_achievement)
    {
     
        String lastcheck = jsoncheck.JsonStringValues(resume_achievement);
        
        if(lastcheck != null)
        {

            Object data = service.insertAwardData(lastcheck);

            System.out.println(data);
            return ResponseEntity.status(HttpStatus.OK).build();
          
        }
          
        System.out.println("Error");
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
