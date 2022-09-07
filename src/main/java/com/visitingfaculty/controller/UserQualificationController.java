package com.visitingfaculty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.user_qualification.UserQualificationType;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserQualificationController {
    

    @Autowired
    UserDaoInterface userDaoInterface;

    @Autowired
    jsoncheck jsoncheck;
    
    @GetMapping("/get-qualification-type")
    public List<UserQualificationType> getQualificationTypeDB(ModelMap modelMap) {

        List<UserQualificationType> list = userDaoInterface.getQualificationType();
        return list;
    }

    @PostMapping(value="/insert-qualification-details")
    public ResponseEntity<?> insertQualificationDetails(@RequestBody String qualificationTableData,ModelMap modelMap)
    {
        String newObject = jsoncheck.qualificationCheck(qualificationTableData);


        if(newObject != null)
         {

            Object insertQualificationDetails = userDaoInterface.insertQualificationDetails(newObject);
            // Object updateQualificationDetails = userDaoInterface.updateQualificationDetails(qualificationTableData);
            System.out.println(insertQualificationDetails);
            if (insertQualificationDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }

            return ResponseEntity.ok("Inserted Successfully");
        }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        
    }

    @PostMapping(value="/update-qualification-details")
    public ResponseEntity<?> updateQualificationDetails(@RequestBody String qualificationTableData,ModelMap modelMap)
    {
        String newObject = jsoncheck.qualificationCheck(qualificationTableData);


        if(newObject != null)
         {

            Object updateQualificationDetails = userDaoInterface.updateQualificationDetails(qualificationTableData);
            System.out.println(updateQualificationDetails);
            if (updateQualificationDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }

            return ResponseEntity.ok("Inserted Successfully");
        }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        
    }
    
    //certification Controller Method
    @PostMapping(value = "/insert-certification-details")
     public ResponseEntity<?> insertCertification(@RequestBody String CertificationData,ModelMap modelMap)
     {
        String check = jsoncheck.certificationJson(CertificationData);

        System.out.println("CERTIFICATION UPDATE" + check);
        if(check != null)
         {
       
            Object updateCertificationDetails = userDaoInterface.updateQualificationDetails(check);
            System.out.println(updateCertificationDetails);
            if (updateCertificationDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            return ResponseEntity.ok("Inserted Successfully");
        }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        
     }

     @PostMapping(value="/resume-insert-qualification")
     public ResponseEntity<?> resumwInsertQualificationDetail(@RequestBody String qualificationTableData,ModelMap modelMap)
     {
        String check = jsoncheck.certificationJson(qualificationTableData);


        if(check != null)
         {
       
            Object insertCertificationDetails = userDaoInterface.insertQualificationDetails(check);
            System.out.println(insertCertificationDetails);
            if (insertCertificationDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            return ResponseEntity.ok("Inserted Successfully");
        }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        
     }

     @PostMapping(value = "/resume-certification-insert")
     public ResponseEntity<?> resumeInsertCertification(@RequestBody String CertificationData,ModelMap modelMap)
     {
        String check = jsoncheck.certificationJson(CertificationData);


        if(check != null)
         {
       
            Object insertCertificationDetails = userDaoInterface.insertQualificationDetails(check);
            System.out.println(insertCertificationDetails);
            if (insertCertificationDetails == null) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            return ResponseEntity.ok("Inserted Successfully");
        }
        else
        {
            System.out.println("Error");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
     }



}
