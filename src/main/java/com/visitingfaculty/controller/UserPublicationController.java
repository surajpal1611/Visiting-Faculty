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
            System.out.println("Publication Json : "+publicationTableData);
            Object insertData = userDaoInterface.insertPublications(publicationcheck);
            // Object insertData = userDaoInterface.updatePublications(publicationcheck);
            System.out.println(insertData);;
            System.out.println("Success");
            return ResponseEntity.status(HttpStatus.OK).build();
          
        }
          
        System.out.println("Error");
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }    
}
