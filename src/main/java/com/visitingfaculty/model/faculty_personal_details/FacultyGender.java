package com.visitingfaculty.model.faculty_personal_details;


public class FacultyGender {
    
    private String name;

    public FacultyGender(String name) {
        this.name = name;
    }

    public FacultyGender() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "facultyGender [name=" + name + "]";
    }
    
}
