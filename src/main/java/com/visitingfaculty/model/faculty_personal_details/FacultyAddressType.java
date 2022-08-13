package com.visitingfaculty.model.faculty_personal_details;


public class FacultyAddressType {
    
    private String name;

    public FacultyAddressType() {
    }

    public FacultyAddressType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "FacultyAddressType [name=" + name + "]";
    }

    
}
