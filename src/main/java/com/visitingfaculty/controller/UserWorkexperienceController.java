package com.visitingfaculty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.user_workexperience_detail.UserWorkexperienceDesignation;
import com.visitingfaculty.model.user_workexperience_detail.UserWorkexperienceType;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserWorkexperienceController {

    @Autowired
    UserDaoInterface userDaoInterface;

    @Autowired
    jsoncheck jsoncheck;

    @GetMapping("/get-workexperience-type")
    public List<UserWorkexperienceType> getWorkexperienceTypeDB() {

        List<UserWorkexperienceType> list = userDaoInterface.getWorkexperienceType();
        return list;
    }

    @GetMapping("/get-workexperience-designation-type")
    public List<UserWorkexperienceDesignation> getWorkexperienceDesignationTypeDB() {

        List<UserWorkexperienceDesignation> list = userDaoInterface.getWorkexperienceDesignation();
        return list;
    }

    @PostMapping(value = "/insert-workexperience-details")
    public ResponseEntity<?> insertWorkExperienceDetails(@RequestBody String workexperienceTableData) {
        Object insertWorkExperiencedetails = userDaoInterface.insertWorkExperienceDetails(workexperienceTableData);
        System.out.println(insertWorkExperiencedetails);
        return ResponseEntity.ok("Inserted Successfully");
        // String newObject = jsoncheck.qualificationCheck(qualificationTableData);

        // if(newObject != null)
        // {

        // Object updateQualificationDetails =
        // userDaoInterface.updateQualificationDetails(newObject);
        // System.out.println(updateQualificationDetails);
        // if (updateQualificationDetails == null) {
        // return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        // }

        // }
        // else
        // {
        // System.out.println("Error");
        // return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        // }

    }

    @PostMapping(value = "/update-workexperience-details")
    public ResponseEntity<?> updateWorkExperienceDetails(@RequestBody String workexperienceTableData) {
        Object updateWorkExperiencedetail = userDaoInterface.updateWorkExperienceDetails(workexperienceTableData);
        System.out.println(updateWorkExperiencedetail);
        return ResponseEntity.ok("Inserted Successfully");
        // String newObject = jsoncheck.qualificationCheck(qualificationTableData);

        // if(newObject != null)
        // {

        // Object updateQualificationDetails =
        // userDaoInterface.updateQualificationDetails(newObject);
        // System.out.println(updateQualificationDetails);
        // if (updateQualificationDetails == null) {
        // return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        // }

        // }
        // else
        // {
        // System.out.println("Error");
        // return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        // }

    }

    @PostMapping("/delete-experience")
    public ResponseEntity<?> deleteExperience(@RequestBody String id) {
        System.out.println(id);

        int deletedRows = userDaoInterface.deleteExperience(Integer.parseInt(id));
        if (deletedRows == 1) {
            return ResponseEntity.status(HttpStatus.OK).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}