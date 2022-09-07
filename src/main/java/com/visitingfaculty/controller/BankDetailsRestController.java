package com.visitingfaculty.controller;

import org.springframework.web.bind.annotation.RestController;
import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.model.user_bank_details.UserBankAccountType;
import com.visitingfaculty.validations.jsoncheck;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
public class BankDetailsRestController {

    @Autowired
    jsoncheck jsoncheck;

    @Autowired
    UserDaoInterface userDaoInterface;

    @GetMapping("/get-bank-account-type")
    public List<UserBankAccountType> getBankAccountTypeDB() {

        List<UserBankAccountType> list = userDaoInterface.getBankAccountType();
        System.out.println(list);
        return list;
    }

    @PostMapping(value = "/update-bank-details")
    public ResponseEntity<?> updateBankDetails(@RequestBody String bank_details) {

        System.out.println("Json Bank From Front End :" + bank_details);
        String check = jsoncheck.bankJsonCheck(bank_details);
        if (check != null) {
            System.out.println("Success");
            Object bankUpdate = userDaoInterface.updateBankDetails(check);
            System.out.println(bankUpdate);
            return ResponseEntity.status(HttpStatus.OK).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }

    @PostMapping(value = "/insert-bank-details")
    public ResponseEntity<?> insertBankDetails(@RequestBody String bank_details) {

        String check = jsoncheck.bankJsonCheck(bank_details);
        System.out.println("Json Bank From Front End :" + check);
        if (check != null) {
            System.out.println("Success");
            Object bankInsert = userDaoInterface.insertBankDetails(check);
            System.out.println(bankInsert);
            return ResponseEntity.status(HttpStatus.OK).build();
           
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}