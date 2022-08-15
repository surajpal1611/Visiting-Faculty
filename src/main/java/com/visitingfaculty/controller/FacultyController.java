package com.visitingfaculty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.visitingfaculty.dto.FacultyPersonalDetailsDTO;

@Controller
public class FacultyController {

    @GetMapping("/resume")
    public String getindex(){
        return "index";
    }

    @PostMapping("/insert")
    @ResponseBody
    public String insert(@RequestBody FacultyPersonalDetailsDTO detailsDTO){

        System.out.println(detailsDTO);
        return "hello";
    }
}  