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
}
