package com.visitingfaculty.dao;

import java.util.Map;


public interface UserDaoInterface {
    
    Map<String, Object> getTokenById(String user_id);
}
