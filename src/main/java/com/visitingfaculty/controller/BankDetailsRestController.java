package com.visitingfaculty.controller;

import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.dao.userDao;
import com.visitingfaculty.validations.jsoncheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class BankDetailsRestController {

    @Autowired jsoncheck jsoncheck;

    @Autowired
    UserDaoInterface userDaoInterface;

    @PostMapping(value="/insert-bank-details")
    public ResponseEntity<?> postMethodName(@RequestBody  String bank_details) {
        
        System.out.println("Json Bank From Front End :"+bank_details);
        Object insertBankDetails = userDaoInterface.insertBankDetails(bank_details);
        // jsoncheck.bankJsonCheck(bank_details);
        System.out.println("Json Bank From Frogggfdfffffffffffffffffffffnt End :"+insertBankDetails);

        return ResponseEntity.status(HttpStatus.OK).build();
    }   
}