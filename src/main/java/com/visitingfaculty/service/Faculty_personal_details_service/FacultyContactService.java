package com.visitingfaculty.service.Faculty_personal_details_service;

import com.visitingfaculty.model.faculty_personal_details.FacultyContact;

public interface FacultyContactService {
    
    String insertFacultyContact(FacultyContact contact);

    String getFacultyContactById(int id);

    String updateFacultyContact(FacultyContact facultyContact);

    String deleteFacultyContact(int id);
}