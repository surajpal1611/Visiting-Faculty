package com.visitingfaculty.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.visitingfaculty.model.user_skills.UserSkillsFromDB;

@Service
public interface UserDaoInterface {

    Object insertPersonalDetails(String personalDetailsData);
    
    Object insertQualificationDetails(String qualificationTableData);
    
    List<UserSkillsFromDB> getAllSkills();
    
    int insertCustomSkill(UserSkillsFromDB userSkillsFromDB);

    UserSkillsFromDB getUserSkill(String skill_name);

    Object insertAwardData(String data);
}
