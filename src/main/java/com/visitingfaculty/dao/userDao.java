package com.visitingfaculty.dao;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class userDao implements UserDaoInterface{


    @Autowired
    JdbcTemplate jdbcTemplate;
    
    @Override
    public Map<String, Object> getTokenById(String user_id) {
       
        String sql = "select token,create_date from email_token where user_id = ?";
        Map<String,Object> result = jdbcTemplate.queryForMap(sql,new Object[] {user_id});

        Date currentDate = new Date();
        Date previousDate = (Date) result.get("create_date");

        if (previousDate.compareTo(currentDate) < 0) {
            return result;
        } else if(previousDate.compareTo(currentDate) == 0) {
            
            if (previousDate.getTime() < currentDate.getTime()) {
                return result;
            } else if(previousDate.getTime() == currentDate.getTime()) {
                return null;
            }
        }
        return null;
    }
    
}
