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
        System.out.println("JSON String from FrontEnd : "+resume_achievement);
        boolean lastcheck = jsoncheck.JsonStringValues(resume_achievement);
        
        if(lastcheck == false)
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
            // Object data = service.insertAwardData(resume_achievement);
            Object data = service.updateAward(resume_achievement);
            System.out.println(data);
            System.out.println("Success");
            return ResponseEntity.status(HttpStatus.OK).build();
    }
}
