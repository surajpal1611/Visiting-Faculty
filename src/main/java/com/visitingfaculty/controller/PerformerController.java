package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;

@RestController
public class PerformerController 
{
    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value="/performer-resume")
    public Object performerResume(@RequestParam(value = "application_lid") int application_lid)
    {
        System.out.println("Resume :"+application_lid);
        Object resume = userDaoInterface.getJobResume(application_lid);
        return resume;
    }
}
