package com.visitingfaculty.model.faculty_personal_details;


public class FacultyAddressType {
    
    private int id;
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
        return "FacultyAddressType [id=" + id + ", name=" + name + "]";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
}
