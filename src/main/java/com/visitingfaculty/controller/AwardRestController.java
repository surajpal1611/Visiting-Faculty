package com.visitingfaculty.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
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
    @ResponseBody
    public ResponseEntity<?> awardTableData(@RequestBody String resume_achievement)
    {
        String lastcheck = jsoncheck.JsonStringValues(resume_achievement);
        
        if(lastcheck != null)
        {

            Object data = service.insertAwardData(lastcheck);
            // Object data = service.updateAward(resume_achievement);

            System.out.println(data);
            System.out.println("Success");
            return ResponseEntity.status(HttpStatus.OK).build();
          
        }
          
        System.out.println("Error");
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
       
    }
}
