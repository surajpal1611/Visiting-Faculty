package com.visitingfaculty.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.visitingfaculty.model.User;
import com.visitingfaculty.model.user_bank_details.UserBankAccountType;
import com.visitingfaculty.model.user_qualification.UserQualificationType;
import com.visitingfaculty.model.user_skills.UserSkillsFromDB;

@Service
public interface UserDaoInterface {

    Object insertPersonalDetails(String personalDetailsData);

    Object updatePersonalDetails(String personalDetailsData);
    
    Object insertQualificationDetails(String qualificationTableData);

    Object updateQualificationDetails(String qualificationTableData);

    List<UserQualificationType> getQualificationType();
    
    List<UserSkillsFromDB> getAllSkills();
    
    int insertCustomSkill(UserSkillsFromDB userSkillsFromDB);

    UserSkillsFromDB getUserSkill(String skill_name);

    Object insertAllSkills(String skills);

    Object updateAllSkills(String skills);

    Object insertAwardData(String data);

    Object insertPublications(String data);
    
    Object insertResearch(String data);

    Object updateAward(String data);

    Object updatePublications(String data);
    
    Object updateResearch(String data);

    List<UserBankAccountType> getBankAccountType();

    Object insertBankDetails(String bankDetailsData);

    Object updateBankDetails(String bankDetailsData);

    int insertUser(User user);

    String getPasswordById(String user_id);

    Integer getUserLid(String user_id);

    Object getUserResume(String resume_lid);

    Object getFacultyApplication(String user_id);

    Object getFacultyResumeByName(String user_id);
}
