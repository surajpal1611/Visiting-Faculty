package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;

@RestController
public class UserQualificationController {
    

    @Autowired
    UserDaoInterface userDaoInterface;


    // @PostMapping(value="/insert-qualification-details")
    // public ResponseEntity<?> insert(@RequestBody UserQualification qualificationTableData) {

    //     return new ResponseEntity<String>("Inserted qualification Successfully", HttpStatus.OK);
    // }

    @PostMapping(value="/insert-qualification-details")
    public ResponseEntity<?> insertQualificationDetails(@RequestBody String qualificationTableData)
    {
        System.out.println(qualificationTableData);
        //Boolean check = jsonchk.UserJsonCheck(personalDetailsData);
       // if(check == true)
      //  {
            Object insertQualificationDetails = userDaoInterface.insertQualificationDetails(qualificationTableData);
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
