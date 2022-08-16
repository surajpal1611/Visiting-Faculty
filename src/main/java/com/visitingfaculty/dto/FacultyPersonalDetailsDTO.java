package com.visitingfaculty.dto;

import com.visitingfaculty.model.faculty_personal_details.FacultyAddress;
import com.visitingfaculty.model.faculty_personal_details.FacultyContact;
import com.visitingfaculty.model.faculty_personal_details.FacultyInfo;

public class FacultyPersonalDetailsDTO {

    private FacultyAddress facultyAddress;
    private FacultyContact facultyContact;
    private FacultyInfo facultyInfo;

    public FacultyPersonalDetailsDTO() {
    }

    public FacultyPersonalDetailsDTO(FacultyAddress facultyAddress, FacultyContact facultyContact,
            FacultyInfo facultyInfo) {
        this.facultyAddress = facultyAddress;
        this.facultyContact = facultyContact;
        this.facultyInfo = facultyInfo;
    }

    public FacultyAddress getFacultyAddress() {
        return facultyAddress;
    }

    public void setFacultyAddress(FacultyAddress facultyAddress) {
        this.facultyAddress = facultyAddress;
    }

    public FacultyContact getFacultyContact() {
        return facultyContact;
    }

    public void setFacultyContact(FacultyContact facultyContact) {
        this.facultyContact = facultyContact;
    }

    public FacultyInfo getFacultyInfo() {
        return facultyInfo;
    }

    public void setFacultyInfo(FacultyInfo facultyInfo) {
        this.facultyInfo = facultyInfo;
    }

    @Override
    public String toString() {
        return "FacultyPersonalDetailsDTO [facultyAddress=" + facultyAddress + ", facultyContact=" + facultyContact
                + ", facultyInfo=" + facultyInfo + "]";
    }

    
}
