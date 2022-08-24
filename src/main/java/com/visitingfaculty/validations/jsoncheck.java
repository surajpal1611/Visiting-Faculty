package com.visitingfaculty.validations;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class jsoncheck 
{
    @Autowired validationsMethod checkVal;

    //For Award Section
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
              String discription = award.getJSONObject(i).getString("discription");
              String achivement_date = award.getJSONObject(i).getString("achivement_date"); 
              String url_path = award.getJSONObject(i).getString("url_path");
  
              Boolean titlecheck = checkVal.CheckWithNoSpectailChar(title);
              Boolean organizationcheck = checkVal.CheckWithNoSpectailChar(organization_name);
              Boolean discriptioncheck = checkVal.CheckWithNoSpectailChar(discription);
              
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

    //For Personal Details
    public Boolean UserJsonCheck(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        //for userinfo
        JSONObject user_info = jsonString.getJSONObject("user_info");
        String f_name = user_info.getString("f_name");
        String l_name = user_info.getString("l_name");
        String email = user_info.getString("email");

        Boolean l_namecheck = checkVal.CheckWithNoSpectailChar(l_name);
        Boolean f_namecheck = checkVal.CheckWithNoSpectailChar(f_name);
        Boolean emailcheckvalue = checkVal.emailCheck(email);

        //for contact numbver
        JSONObject user_contact = jsonString.getJSONObject("user_contact");
        String contact_number = user_contact.getString("contact_number");
        Boolean contactcheck = checkVal.phoneNumberCheck(contact_number);

        if(l_namecheck == true && f_namecheck == true && emailcheckvalue == true && contactcheck == true)
        {
            check = true;
        }
        else
        {
            check = false;
        }
    return check;    
    }

    //For Bank Details
    public void bankJsonCheck(String JsonString)
    {
        Boolean check = false;
        JSONObject jsonString = new JSONObject(JsonString);
        //Value Fron Key
        String account_number = jsonString.getString("account_number");
        String name = jsonString.getString("name");
        String branch = jsonString.getString("branch");
        String ifsc_code = jsonString.getString("ifsc_code");
        String micr_code = jsonString.getString("micr_code");
        String account_type = jsonString.getString("account_type");

        Boolean namecheck = checkVal.CheckWithNoSpectailChar(name);
        Boolean branchcheck = checkVal.CheckWithNoSpectailChar(branch);
        Boolean account_typecheck = checkVal.CheckWithNoSpectailChar(account_type);
        Boolean account_numbercheck = checkVal.accountNumberCheck(account_number);
        System.out.println("Account number boolean : "+account_numbercheck);


    }

    //For Research Details
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
