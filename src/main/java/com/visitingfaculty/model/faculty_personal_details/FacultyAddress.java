package com.visitingfaculty.model.faculty_personal_details;


public class FacultyAddress {
    
    private int faculty_lid;
    private String address;

    public FacultyAddress() {
    }

    public FacultyAddress(int faculty_lid, String address) {
        this.faculty_lid = faculty_lid;
        this.address = address;
    }

    public int getFaculty_lid() {
        return faculty_lid;
    }

    public void setFaculty_lid(int faculty_lid) {
        this.faculty_lid = faculty_lid;
    }

    public String getaddress() {
        return address;
    }

    public void setaddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "FacultyAddress [faculty_lid=" + faculty_lid + ", address=" + address + "]";
    }
}
