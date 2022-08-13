package com.visitingfaculty.service.Faculty_personal_details_service;
import org.springframework.stereotype.Service;
import com.visitingfaculty.model.faculty_personal_details.FacultyAddress;


@Service
public interface FacultyAddressService {

    String insertAddress(FacultyAddress facultyAddress);

    FacultyAddress getAddresByid(int id);

    FacultyAddress updateAddressByid(int id);

    String deleteAddressByid(int id);
}