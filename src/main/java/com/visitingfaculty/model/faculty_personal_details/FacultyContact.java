package com.visitingfaculty.model.faculty_personal_details;


public class FacultyContact {
    
    private int Faculty_Lid;
    private String contact_number;
    
    public FacultyContact() {
    }

    public FacultyContact(int faculty_Lid, String contact_number) {
        Faculty_Lid = faculty_Lid;
        this.contact_number = contact_number;
    }

    public int getFaculty_Lid() {
        return Faculty_Lid;
    }

    public void setFaculty_Lid(int faculty_Lid) {
        Faculty_Lid = faculty_Lid;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    @Override
    public String toString() {
        return "FacultyContact [Faculty_Lid=" + Faculty_Lid + ", contact_number=" + contact_number + "]";
    }
    
}
