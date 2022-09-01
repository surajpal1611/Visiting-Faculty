package com.visitingfaculty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.user_qualification.UserQualificationType;

@RestController
public class UserQualificationController {
    

    @Autowired
    UserDaoInterface userDaoInterface;


    // @PostMapping(value="/insert-qualification-details")
    // public ResponseEntity<?> insert(@RequestBody UserQualification qualificationTableData) {

    //     return new ResponseEntity<String>("Inserted qualification Successfully", HttpStatus.OK);
    // }


    
    @GetMapping("/get-qualification-type")
    public List<UserQualificationType> getQualificationTypeDB(ModelMap modelMap) {

        List<UserQualificationType> list = userDaoInterface.getQualificationType();
        return list;
    }

    @PostMapping(value="/insert-qualification-details")
    public ResponseEntity<?> insertQualificationDetails(@RequestBody String qualificationTableData,ModelMap modelMap)
    {
        System.out.println(qualificationTableData);
        //Boolean check = jsonchk.UserJsonCheck(personalDetailsData);
        // if(check == true)
        //  {
       
            Object insertQualificationDetails = userDaoInterface.insertQualificationDetails(qualificationTableData);
            // Object updateQualificationDetails = userDaoInterface.updateQualificationDetails(qualificationTableData);
            // System.out.println(updateQualificationDetails);
            System.out.println(insertQualificationDetails);
            // if (insertPersonalDetails == null) {
            //     return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            // }
            return ResponseEntity.ok("Inserted Successfully");
        // }
        // else
        // {
        //     System.out.println("Error");
        //     return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        // }
        
    }


}
