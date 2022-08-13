package com.visitingfaculty.service.Faculty_personal_details_service;

import com.visitingfaculty.model.faculty_personal_details.Faculty;

public interface FacultyService {
    
    String insertFaculty(Faculty faculty);

    Faculty getFacultyById(String user_id);

    String getFacultyPassword(String id);

    Faculty updateFacultyPassword(String user_id);
}