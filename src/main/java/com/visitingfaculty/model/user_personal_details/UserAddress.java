package com.visitingfaculty.model.user_personal_details;

public class UserAddress {

    private int user_lid;
    private String address;

    public UserAddress() {
    }

    public UserAddress(int user_lid, String address) {
        this.user_lid = user_lid;
        this.address = address;
    }

    public int getUser_lid() {
        return user_lid;
    }

    public void setUser_lid(int user_lid) {
        this.user_lid = user_lid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "UserAddress [address=" + address + ", user_lid=" + user_lid + "]";
    }

    
}
