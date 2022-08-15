package com.visitingfaculty.dto;

import com.visitingfaculty.model.faculty_personal_details.FacultyAddress;
import com.visitingfaculty.model.faculty_personal_details.FacultyAddressType;
import com.visitingfaculty.model.faculty_personal_details.FacultyContact;
import com.visitingfaculty.model.faculty_personal_details.FacultyGender;
import com.visitingfaculty.model.faculty_personal_details.FacultyInfo;


public class FacultyPersonalDetailsDTO {
    
    private FacultyAddress facultyAddress;
    private FacultyAddressType facultyAddressType;
    private FacultyContact facultyContact;
    private FacultyGender facultyGender;
    private FacultyInfo facultyInfo;

    public FacultyPersonalDetailsDTO() {
    }

    public FacultyPersonalDetailsDTO(FacultyAddress facultyAddress, FacultyAddressType facultyAddressType,
            FacultyContact facultyContact, FacultyGender facultyGender, FacultyInfo facultyInfo) {
        this.facultyAddress = facultyAddress;
        this.facultyAddressType = facultyAddressType;
        this.facultyContact = facultyContact;
        this.facultyGender = facultyGender;
        this.facultyInfo = facultyInfo;
    }

    public FacultyAddress getFacultyAddress() {
        return facultyAddress;
    }

    public void setFacultyAddress(FacultyAddress facultyAddress) {
        this.facultyAddress = facultyAddress;
    }

    public FacultyAddressType getFacultyAddressType() {
        return facultyAddressType;
    }

    public void setFacultyAddressType(FacultyAddressType facultyAddressType) {
        this.facultyAddressType = facultyAddressType;
    }

    public FacultyContact getFacultyContact() {
        return facultyContact;
    }

    public void setFacultyContact(FacultyContact facultyContact) {
        this.facultyContact = facultyContact;
    }

    public FacultyGender getFacultyGender() {
        return facultyGender;
    }

    public void setFacultyGender(FacultyGender facultyGender) {
        this.facultyGender = facultyGender;
    }

    public FacultyInfo getFacultyInfo() {
        return facultyInfo;
    }

    public void setFacultyInfo(FacultyInfo facultyInfo) {
        this.facultyInfo = facultyInfo;
    }

    @Override
    public String toString() {
        return "FacultyPersonalDetailsDTO [facultyAddress=" + facultyAddress + ", facultyAddressType="
                + facultyAddressType + ", facultyContact=" + facultyContact + ", facultyGender=" + facultyGender
                + ", facultyInfo=" + facultyInfo + "]";
    }

    
}
