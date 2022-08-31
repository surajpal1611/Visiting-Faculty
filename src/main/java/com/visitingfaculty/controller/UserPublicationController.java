package com.visitingfaculty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.dao.UserDaoInterface;

@RestController
public class UserPublicationController {

    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value="/insert-publication-details")
    public ResponseEntity<String> insert(@RequestBody String publicationTableData) 
    {
        System.out.println("Publication Json : "+publicationTableData);
        Object insertData = userDaoInterface.insertPublications(publicationTableData);
        // Object insertData = userDaoInterface.updatePublications(publicationTableData);
        System.out.println(insertData);
        return new ResponseEntity<String>("Inserted publication Successfully", HttpStatus.OK);
    }    
}
