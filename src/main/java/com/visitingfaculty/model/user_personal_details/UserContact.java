package com.visitingfaculty.model.user_personal_details;


public class UserContact {
    
    private int user_Lid;
    private String contact_number;
    
    public UserContact() {
    }

    public UserContact(int user_Lid, String contact_number) {
        this.user_Lid = user_Lid;
        this.contact_number = contact_number;
    }

    public int getUser_Lid() {
        return user_Lid;
    }

    public void setUser_Lid(int user_Lid) {
        this.user_Lid = user_Lid;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

   
}
