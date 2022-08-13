package com.visitingfaculty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FacultyController {

    @GetMapping("/index")
    public String getindex(){
        return "index";
    }
}