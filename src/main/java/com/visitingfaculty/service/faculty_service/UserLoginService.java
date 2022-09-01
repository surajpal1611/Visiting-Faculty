package com.visitingfaculty.service.faculty_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.visitingfaculty.dao.UserDaoInterface;
import com.visitingfaculty.dto.UserDto;
import com.visitingfaculty.service.PasswordService;

@Service
public class UserLoginService {
    
    @Autowired
    UserDaoInterface userDaoInterface;

    @Autowired
    PasswordService passwordService;

    // @Autowired
    // PasswordService passwordService;

    public boolean verifyPassword(UserDto userDto) {

        String passwordFromDB = userDaoInterface.getPasswordById(userDto.getUser_id());

        if (passwordService.verifyPassword(passwordFromDB, userDto.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
