package com.visitingfaculty.model.faculty_personal_details;


public class FacultyAddress {
    
    private int faculty_lid;
    private String name;

    public FacultyAddress() {
    }

    public FacultyAddress(int faculty_lid, String name) {
        this.faculty_lid = faculty_lid;
        this.name = name;
    }

    public int getFaculty_lid() {
        return faculty_lid;
    }

    public void setFaculty_lid(int faculty_lid) {
        this.faculty_lid = faculty_lid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "FacultyAddress [faculty_lid=" + faculty_lid + ", name=" + name + "]";
    }
}
