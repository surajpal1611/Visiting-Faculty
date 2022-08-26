package com.visitingfaculty.service.faculty_service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.visitingfaculty.dao.WorkExperienceDao;
import com.visitingfaculty.dto.Designation;
import com.visitingfaculty.dto.WorkExperience;

@Component
public class WorkExperienceService {
	@Autowired
	WorkExperienceDao workExperienceDao;

	public List<Designation> getAllDesignation() {
		List<Designation> designationValue;
		designationValue = workExperienceDao.getAllDesignation();
		return designationValue;
	}

	public List<WorkExperience> getWorkExperienceValue() {
		List<WorkExperience> workExperienceValue;
		workExperienceValue = workExperienceDao.getWorkExperienceValue();
		return workExperienceValue;
	}
}
