package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.validations.jsoncheck;

@RestController
public class UserPublicationController {

    @Autowired
    UserDaoInterface userDaoInterface;

    @Autowired 
    jsoncheck jsoncheck;

    @PostMapping(value="/insert-publication-details")
    public ResponseEntity<String> insert(@RequestBody String publicationTableData) 
    {

        String publicationcheck = jsoncheck.publicationJsonCheck(publicationTableData);

        if(publicationcheck != null)
        {
            Object updateData = userDaoInterface.updatePublications(publicationcheck);

            if (updateData != null) {
                System.out.println(updateData);;
                System.out.println("Success");
                return ResponseEntity.status(HttpStatus.OK).build();
            } 
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
         
        }
          
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();

    }
    @PostMapping(value="/resume-publication-insert")
    public ResponseEntity<String> insertPublication(@RequestBody String publicationTableData) 
    {
        String publicationcheck = jsoncheck.publicationJsonCheck(publicationTableData);

        if(publicationcheck != null)
        {
            Object insertData = userDaoInterface.insertPublications(publicationcheck);

            if (insertData != null) {
                System.out.println(insertData);;
                System.out.println("Success");
                return ResponseEntity.status(HttpStatus.OK).build();
            } 
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
         
        }
          
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();

    } 
    
    @PostMapping("/delete-publication")
    public ResponseEntity<?> deletePublication(@RequestBody String id) {
        System.out.println(id);

        int deletedRows = userDaoInterface.deletepublication(Integer.parseInt(id));
        if (deletedRows == 1) {
            return ResponseEntity.status(HttpStatus.OK).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
