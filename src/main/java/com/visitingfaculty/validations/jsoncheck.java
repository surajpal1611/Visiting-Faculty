package com.visitingfaculty.validations;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class jsoncheck 
{
    @Autowired validationsMethod checkVal;

    //**************************************************************************************************---->For Award Section
    public Boolean JsonStringValues(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        JSONArray award = jsonString.getJSONArray("insert_award");
          for( int i = 0 ; i < award.length() ; i++ )
          {
              String title = award.getJSONObject(i).getString("title");
              String organization_name = award.getJSONObject(i).getString("organization_name");
              String organization_type_lid = award.getJSONObject(i).getString("organization_type_lid");
              String discription = award.getJSONObject(i).getString("description");
              String achivement_date = award.getJSONObject(i).getString("achievement_date"); 
              String url_path = award.getJSONObject(i).getString("url_path");
  
              Boolean titlecheck = checkVal.CheckWithNoSpectailChar(title);
              Boolean organizationcheck = checkVal.CheckWithNoSpectailChar(organization_name);
              Boolean discriptioncheck = checkVal.checkLengthThree(discription);
              
              if(titlecheck == false || organizationcheck == false || discriptioncheck == false)
              {
                  check = false;
                  break;
              }
              else
              {
                  check = true;
              }
          }
        return check;
    }

    //**************************************************************************************************---->For Personal Details
    public Boolean UserJsonCheck(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        //for userinfo
        JSONObject insert_user_personal_details = jsonString.getJSONObject("insert_user_personal_details");
        JSONArray user_info = insert_user_personal_details.getJSONArray("user_info");
        JSONArray user_contact = insert_user_personal_details.getJSONArray("user_contact");
        for(int i = 0 ; i < user_info.length() ; i++ )
        {
             String f_name = user_info.getJSONObject(i).getString("f_name");
             String l_name = user_info.getJSONObject(i).getString("l_name");
             String email = user_info.getJSONObject(i).getString("email");
     
             Boolean l_namecheck = checkVal.CheckWithNoSpectailChar(l_name);
             Boolean f_namecheck = checkVal.CheckWithNoSpectailChar(f_name);
             Boolean emailcheckvalue = checkVal.emailCheck(email);
     
             //for contact numbver
             String contact_number = user_contact.getJSONObject(i).getString("contact_number");
             Boolean contactcheck = checkVal.phoneNumberCheck(contact_number);
     
             if(l_namecheck == false || f_namecheck == false || emailcheckvalue == false || contactcheck == false)
             {
                 check = false;
                 break;
             }
             else
             {
                 check = true;
             }
        }
        return check;
    }

    //**************************************************************************************************---->For Bank Details
    public Boolean bankJsonCheck(String JsonString)
    {
        Boolean check = false;
        JSONArray jsonStringArray = new JSONArray(JsonString);
        System.out.println("JSON String Array for Bank : "+jsonStringArray);
        
        //Value Fron Key
        String account_number = jsonStringArray.getJSONObject(0).getString("account_number");
        String name = jsonStringArray.getJSONObject(0).getString("name");
        String branch = jsonStringArray.getJSONObject(0).getString("branch");
        String ifsc_code = jsonStringArray.getJSONObject(0).getString("ifsc_code");
        String account_type = jsonStringArray.getJSONObject(0).getString("account_type");

        Boolean account_numberCheck = checkVal.accountNumberCheck(account_number);
        Boolean nameCheck = checkVal.checkLengthThree(name);
        Boolean branchCheck = checkVal.CheckWithNoSpectailChar(branch);
        Boolean ifsc_codeCheck = checkVal.checkLengthThree(ifsc_code);
        Boolean account_typeCheck = checkVal.CheckWithNoSpectailChar(account_type);

        if(account_numberCheck == true && nameCheck == true && branchCheck == true && ifsc_codeCheck == true && account_typeCheck == true)
        {
            check = true;
        }
        return check;
    }

    //**************************************************************************************************---->For Qualification Details
    public Boolean qualificationCheck(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        JSONArray qualification = jsonString.getJSONArray("qualificationDetails");
        for( int i = 0 ; i < qualification.length() ; i++ )
        {
            String topic_of_study = qualification.getJSONObject(i).getString("topic_of_study");
            String university = qualification.getJSONObject(i).getString("university");
            String institute = qualification.getJSONObject(i).getString("institute");
            String url_path = qualification.getJSONObject(i).getString("url_path");
            String year_of_passing = qualification.getJSONObject(i).getString("year_of_passing");
            String percentile = qualification.getJSONObject(i).getString("percentile");

            Boolean topic_of_studyCheck = checkVal.checkLengthThree(topic_of_study);
            Boolean universityCheck = checkVal.CheckWithNoSpectailChar(university);
            Boolean instituteCheck = checkVal.CheckWithNoSpectailChar(institute);
            Boolean url_pathCheck = checkVal.checkLengthThree(url_path);
            Boolean year_of_passingCheck = checkVal.yearCheck(year_of_passing);
            Boolean percentileCheck = checkVal.percentageCheck(percentile);

            if(topic_of_studyCheck == true && universityCheck == true && instituteCheck == true && url_pathCheck == true && year_of_passingCheck == true && percentileCheck == true)
            {
                check = true;
            }
        }
    return check;
    }

    //**************************************************************************************************---->For Research Details
    public Boolean researchJsonCheck(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        JSONArray research = jsonString.getJSONArray("inser_research");
        for( int i = 0 ; i < research.length() ; i++ )
        {
            String journal_name = research.getJSONObject(i).getString("journal_name");
            String role = research.getJSONObject(i).getString("role");
            String volume_year = research.getJSONObject(i).getString("volume_year");
            String number = research.getJSONObject(i).getString("number");
            String category = research.getJSONObject(i).getString("category");
            String url_path = research.getJSONObject(i).getString("url_path");

            Boolean journal_nameCheck = checkVal.checkLengthThree(journal_name);
            Boolean volume_yearCheck = checkVal.yearCheck(volume_year);
            Boolean numberCheck = checkVal.checkLengthThree(number);
            Boolean categoryCheck = checkVal.checkLengthThree(category);
            Boolean url_pathCheck = checkVal.checkLengthThree(url_path);

            if(journal_nameCheck == true && volume_yearCheck == true && numberCheck == true && categoryCheck == true && url_pathCheck == true)
            {
                check = true;
            } 
            else
            {
                check = false;
                break;
            }           
        }
    return check;    
    }
}
