package com.visitingfaculty.dto;

import com.visitingfaculty.model.user_personal_details.UserAddress;
import com.visitingfaculty.model.user_personal_details.UserContact;
import com.visitingfaculty.model.user_personal_details.UserInfo;

public class UserPersonalDetailsDTO {

    private UserAddress user_address;
    private UserContact user_contact;
    private UserInfo user_info;

    public UserPersonalDetailsDTO() {
    }

    public UserPersonalDetailsDTO(UserAddress user_address, UserContact user_contact, UserInfo user_info) {
        this.user_address = user_address;
        this.user_contact = user_contact;
        this.user_info = user_info;
    }

    public UserAddress getUser_address() {
        return user_address;
    }

    public void setUser_address(UserAddress user_address) {
        this.user_address = user_address;
    }

    public UserContact getUser_contact() {
        return user_contact;
    }

    public void setUser_contact(UserContact user_contact) {
        this.user_contact = user_contact;
    }

    public UserInfo getUser_info() {
        return user_info;
    }

    public void setUser_info(UserInfo user_info) {
        this.user_info = user_info;
    }

    @Override
    public String toString() {
        return "FacultyPersonalDetailsDTO [user_address=" + user_address + ", user_contact=" + user_contact
                + ", user_info=" + user_info + "]";
    }

  
}
