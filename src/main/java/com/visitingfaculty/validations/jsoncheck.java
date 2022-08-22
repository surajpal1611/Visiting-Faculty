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
    public void UserJsonCheck(String JsonString)
    {
        JSONObject jsonString = new JSONObject(JsonString);
        JSONObject obj = jsonString.getJSONObject("user_info");
        String f_name = obj.getString("f_name");
        String l_name = obj.getString("l_name");
        String email = obj.getString("email");
        Boolean emailcheckvalue = checkVal.emailCheck(email);
        System.out.println("Email boolian : "+emailcheckvalue);
    }
}
