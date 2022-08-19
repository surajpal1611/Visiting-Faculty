package com.visitingfaculty.model.user_personal_details;


public class UserContact {
    
    private int user_lid;
    private String contact_number;
    
    public UserContact() {
    }

    public UserContact(int user_lid, String contact_number) {
        this.user_lid = user_lid;
        this.contact_number = contact_number;
    }

    public int getUser_lid() {
        return user_lid;
    }

    public void setUser_Lid(int user_lid) {
        this.user_lid = user_lid;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    @Override
    public String toString() {
        return "UserContact [contact_number=" + contact_number + ", user_lid=" + user_lid + "]";
    }

}
