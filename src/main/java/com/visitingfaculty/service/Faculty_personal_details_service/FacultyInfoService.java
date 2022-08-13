package com.visitingfaculty.service.Faculty_personal_details_service;

import com.visitingfaculty.model.faculty_personal_details.FacultyInfo;

public interface FacultyInfoService {
    
    FacultyInfo getFacultyInfoById(int user_lid);

    FacultyInfo updateFacultyInfo(int user_lid);
}
