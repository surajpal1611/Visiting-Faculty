package com.visitingfaculty.validations;

import org.springframework.stereotype.Component;

@Component
public class validationsMethod 
{
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

    
}
