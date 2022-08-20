package com.visitingfaculty.model.user_skills;

public class UserSkillsFromDB {

    private int id;
    private int skill_type_lid;
    private String skill_name;

    public UserSkillsFromDB() {
    }

    public UserSkillsFromDB(int id, int skill_type_lid, String skill_name) {
        this.id = id;
        this.skill_type_lid = skill_type_lid;
        this.skill_name = skill_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSkill_type_lid() {
        return skill_type_lid;
    }

    public void setSkill_type_lid(int skill_type_lid) {
        this.skill_type_lid = skill_type_lid;
    }

    public String getSkill_name() {
        return skill_name;
    }

    public void setSkill_name(String skill_name) {
        this.skill_name = skill_name;
    }

    @Override
    public String toString() {
        return "UserSkillsFromDB [id=" + id + ", skill_name=" + skill_name + ", skill_type_lid=" + skill_type_lid + "]";
    }

}
