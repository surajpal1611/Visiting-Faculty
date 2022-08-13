package com.visitingfaculty.service.Faculty_personal_details_service;

import com.visitingfaculty.model.faculty_personal_details.FacultyGender;

public interface FacultyGenderService {

    String insertFacultyGender(FacultyGender gender);
    
    String getFacultygenderById(int id);

    FacultyGender updateFacultyGender(FacultyGender facultygender);

    String deleteFacultyGender(int id);
}