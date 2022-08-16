package com.visitingfaculty.dto;

import com.visitingfaculty.model.faculty_personal_details.FacultyAddress;
import com.visitingfaculty.model.faculty_personal_details.FacultyAddressType;
import com.visitingfaculty.model.faculty_personal_details.FacultyContact;
import com.visitingfaculty.model.faculty_personal_details.FacultyInfo;

public class FacultyPersonalDetailsDTO {

    private FacultyAddress facultyAddress;
    private FacultyAddressType facultyAddressType;
    private FacultyContact facultyContact;
    private FacultyInfo facultyInfo;

    public FacultyPersonalDetailsDTO() {
    }

    public FacultyPersonalDetailsDTO(FacultyAddress facultyAddress, FacultyAddressType facultyAddressType,
            FacultyContact facultyContact, FacultyInfo facultyInfo) {
        this.facultyAddress = facultyAddress;
        this.facultyAddressType = facultyAddressType;
        this.facultyContact = facultyContact;
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

    public FacultyInfo getFacultyInfo() {
        return facultyInfo;
    }

    public void setFacultyInfo(FacultyInfo facultyInfo) {
        this.facultyInfo = facultyInfo;
    }

    @Override
    public String toString() {
        return "FacultyPersonalDetailsDTO [facultyAddress=" + facultyAddress + ", facultyAddressType="
                + facultyAddressType + ", facultyContact=" + facultyContact + ", facultyInfo=" + facultyInfo + "]";
    }


    
}
