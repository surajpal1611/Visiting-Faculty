package com.visitingfaculty.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.visitingfaculty.model.user_skills.UserSkillsFromDB;

@Repository
public class userDao implements UserDaoInterface {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<UserSkillsFromDB> getAllSkills() {

        String sql = "select * from skill";

        return jdbcTemplate.query(sql, (rs, rownum) -> {
            return new UserSkillsFromDB(rs.getInt("id"), rs.getInt("skill_type_lid"), rs.getString("skill_name"));
        });
    }

    @Override
    public int insertCustomSkill(UserSkillsFromDB userSkillsFromDB) {

        String sql = "insert into skill(skill_type_lid,skill_name) values(?,?)";
        return jdbcTemplate.update(sql, userSkillsFromDB.getSkill_type_lid(), userSkillsFromDB.getSkill_name());
    }

    @Override
    public UserSkillsFromDB getUserSkill(String skill_name) {

       String sql = "select * from skill where skill_name = ?";

       return jdbcTemplate.queryForObject(sql, (rs,rownum) -> {
            return new UserSkillsFromDB(rs.getInt("id"),rs.getInt("skill_type_lid"),rs.getString("skill_name"));
       },skill_name);
    }

}