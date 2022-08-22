package com.visitingfaculty.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.validations.jsoncheck;

@RestController
public class AwardRestController 
{
    @Autowired jsoncheck jsoncheck;

    @PostMapping(value="/award_Table_Data")
    @ResponseBody
    public String awardTableData(@RequestBody String resume_achievement)
    {
        System.out.println("JSON String from FrontEnd : "+resume_achievement);
        boolean lastcheck = jsoncheck.JsonStringValues(resume_achievement);
        
        if(lastcheck == false)
        {
            System.out.println("Error");
            return "Error";
        }
        else
        {
            System.out.println("Success");
            return "Data Entered Successfully";
        }

    }
}
