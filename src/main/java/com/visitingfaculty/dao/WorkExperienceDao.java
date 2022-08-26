package com.visitingfaculty.dao;

//suraj created by
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.visitingfaculty.dto.Designation;
import com.visitingfaculty.dto.WorkExperience;

@Repository
public class WorkExperienceDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Designation> getAllDesignation() {
		String sql = "SELECT id,name FROM designation";

		return jdbcTemplate.query(sql, (rs, rownum) -> {
			return new Designation(rs.getString("id"), rs.getString("name"));
		});

	}
	
	public List<WorkExperience> getWorkExperienceValue() {
		String sql = "SELECT id,name FROM experience_type where parent_lid=2";

		return jdbcTemplate.query(sql, (rs, rownum) -> {
			return new WorkExperience(rs.getString("id"), rs.getString("name"));
		});

	}


}
