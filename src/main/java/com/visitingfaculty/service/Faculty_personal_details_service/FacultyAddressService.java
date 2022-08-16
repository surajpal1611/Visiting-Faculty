package com.visitingfaculty.service.Faculty_personal_details_service;
import com.visitingfaculty.model.faculty_personal_details.FacultyAddress;


public interface FacultyAddressService {

    String insertAddress(FacultyAddress facultyAddress);

    FacultyAddress getAddresByid(int id);

    FacultyAddress updateAddressByid(int id);

    String deleteAddressByid(int id);
}