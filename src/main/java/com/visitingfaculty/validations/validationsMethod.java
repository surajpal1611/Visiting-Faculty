package com.visitingfaculty.validations;

import org.springframework.stereotype.Component;

@Component
public class validationsMethod 
{
    //Method to check length is three
    public Boolean checkLengthThree(String value)
    {
        Boolean check = false;
        if(value.length() > 3)
        {
            check = true;
            return check;
        }
        else
        {
            return check;
        }
    }

    //Method to check If Value has any Special Characters & Number
    public boolean CheckWithNoSpectailChar(String values)
    {
        Boolean check = false;
        char value[] = values.toCharArray();
        if(value.length > 1)
        {
            for(int i = 0 ; i < value.length ;i++)
            {
                if(value[i] >= '!' && value[i] <= '@')
                {
                    check =false;
                    break;
                }
                else
                {
                    check = true;    
                }
            }
        }
        else
        {
             check=false;
        }
        return check;
    }

    //Method to validate Email 
    public Boolean emailCheck(String value)
    {
        Boolean check = false;
        int atposition = value.indexOf('@');
        int dotposition = value.lastIndexOf('.');
        
        if (atposition < 1 || (value.length() - 2) == dotposition) 
        {
            check = false;
        }
        else if (atposition < dotposition) 
        {
            check = true;
        }
        else 
        {
            check = false;
        }
    return check;
    }

    //Phone number Validation
    public Boolean phoneNumberCheck(String value)
    {
        Boolean check = false;
        if(value.length() == 10)
        {
              for(int i = 0 ; i < value.length() ; i++)
              {
                  if(value.charAt(i) < '0' || value.charAt(i) > '9')
                  {
                      check = false;
                      break;
                  }
                  else
                  {
                      check = true;
                  }
              }
        }
        return check;
    }
    
    //method to check Bank Account Number
    public Boolean accountNumberCheck(String value)
    {
        Boolean check = false;
        char acountnumber[] = value.toCharArray();
        if(acountnumber.length >= 10 && acountnumber.length <=16)
        {
            for(int i = 0 ; i < acountnumber.length ; i++)
            {
                if(acountnumber[i] < '0' || acountnumber[i] > '9')
                {
                    check = false;
                }
                else
                {
                    check = true;
                }
            }
        }
        else
        {
            check = false;
        }
    return check; 
    }
}
