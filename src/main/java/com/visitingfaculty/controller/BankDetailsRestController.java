package com.visitingfaculty.controller;

import org.springframework.web.bind.annotation.RestController;

import com.visitingfaculty.model.user_bank_details.UserBankDetails;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class BankDetailsRestController {


    @PostMapping(value="/insert-bank-details")
    public ResponseEntity<String> postMethodName(@RequestBody  String bank_details) {
        
        System.out.println(bank_details);
        return new ResponseEntity<String>("Inserted Successfully", HttpStatus.OK);
    }
    
}