package com.visitingfaculty.validations;


import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ValidationOfWorkExperienceJson {
	@Autowired
	validationsMethod validation;

	public Map<String,String> validationOfJson(String workExperienceData) throws ParseException {
		JSONObject jsonObject = new JSONObject(workExperienceData);
		JSONArray workExperience = jsonObject.getJSONArray("work_Experience");
	Map<String, String> mapValueWithBackend = new HashMap<String,String>();
		boolean finalResult = false;
		for (int i = 0; i < workExperience.length(); i++) {
			String id=(String) workExperience.getJSONObject(i).get("resume_lid");
			String experienceTypeId=(String)         workExperience.getJSONObject(i).get("experience_type_lid");
			String employer_name = (String) workExperience.getJSONObject(i).get("employer_name");
			String designation = (String) workExperience.getJSONObject(i).get("designation");
			String designation_lid = (String) workExperience.getJSONObject(i).get("designation_lid");
			String description = (String) workExperience.getJSONObject(i).get("description");
			String start_Date = (String) workExperience.getJSONObject(i).get("start_Date");
			String end_Date = (String) workExperience.getJSONObject(i).get("end_Date");
			String responsibilities = (String) workExperience.getJSONObject(i).get("responsibilities");
		//	String is_current = (String) workExperience.getJSONObject(i).get("is_current");
			
			if (employer_name.equals("") || id.equals("") || experienceTypeId.equals("") || designation.equals("")||designation_lid.equals("")
					|| start_Date.equals("") || end_Date.equals("") || description.equals("")|| responsibilities.equals("")) {
				mapValueWithBackend.put(id,"false");
			}
			boolean uversityValue = validation.getNamesValidation(employer_name);
			boolean programValue = validation.getNamesValidation(designation);
			boolean subjectTaughtValue = validation.getNamesValidation(responsibilities);
			boolean designationValue = validation.getNamesValidation(designation);
			validation.getNamesValidation(designation);
			boolean isDateValue = validation.isDateValid(start_Date, end_Date);
			finalResult = uversityValue && programValue && subjectTaughtValue && designationValue && isDateValue;
			if (finalResult == false)
			mapValueWithBackend.put(id,finalResult+"");
		}
		return mapValueWithBackend;
	}
	public String[] isBooleanTrueOrFalse(Map<String,String> idWithBooleanValue) {
     int countOfFalse=0;
	for(int index=0;index<idWithBooleanValue.size();index++) {
	if(idWithBooleanValue.get(index+"")=="false") {
	 countOfFalse++;
	}}
	System.out.println("values of count is"+countOfFalse);
	String returnValue[]=new String[countOfFalse];
	for(int index=0;index<idWithBooleanValue.size();index++) {
		System.out.println(idWithBooleanValue.get(index+""));
		if(idWithBooleanValue.get(index+"")=="false") 
			returnValue[index]=index+"";
		
	}
	return returnValue;
}}