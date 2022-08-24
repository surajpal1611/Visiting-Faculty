package com.visitingfaculty.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.visitingfaculty.dao.UserDaoInterface;

@Service
public class UserInsertionService {

    @Autowired
    UserDaoInterface userDaoInterface;

    public boolean insertAwardData(String data) {

       Object insertedData =  userDaoInterface.insertAwardData(data);
       if (insertedData == null) {
        return false;
       } 
        return true;
    
    }    
}