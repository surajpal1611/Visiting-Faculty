package com.visitingfaculty.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.visitingfaculty.dto.FacultyPersonalDetailsDTO;

@Controller
public class FacultyController {

    @GetMapping("/resume")
    public String getindex() {
        return "index";
    }

    @PostMapping(value="/insert",
                 produces = MediaType.APPLICATION_JSON_VALUE,
                 consumes = MediaType.APPLICATION_JSON_VALUE)

    @ResponseBody
    public String insert(@RequestBody FacultyPersonalDetailsDTO personalDetailsData) {

        System.out.println(personalDetailsData);
        return "hello";
    }
}