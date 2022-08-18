package com.visitingfaculty.model;

import java.util.Date;
import java.util.Random;

import com.visitingfaculty.dto.UserDto;

public class EmailTokenModel {

    private String user_id;
    private int token;
    private Date expiryDate;
    private UserDto userDto;

    public EmailTokenModel() {
    }

    public EmailTokenModel(UserDto userDto, String user_id) {
        this.user_id = user_id;
        this.userDto = userDto;
        token = getVerificationToken();
        expiryDate = new Date();
    }

    public int getVerificationToken() {

        Random random = new Random();
        int number = random.nextInt(999999);
        return number;
    }

    public int getToken() {
        return token;
    }

    public void setToken(int token) {
        this.token = token;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public UserDto getUserDto() {
        return userDto;
    }

    public void setUserDto(UserDto userDto) {
        this.userDto = userDto;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "EmailTokenModel [expiryDate=" + expiryDate + ", token=" + token + ", userDto=" + userDto
                + ", user_id=" + user_id + "]";
    }


}
