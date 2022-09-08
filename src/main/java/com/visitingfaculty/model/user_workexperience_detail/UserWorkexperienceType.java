package com.visitingfaculty.model.user_workexperience_detail;

public class UserWorkexperienceType {

    private int id;
    private String name;
    private String abbr;

    @Override
    public String toString() {
        return "UserWorkexperienceType [abbr=" + abbr + ", id=" + id + ", name=" + name + "]";
    }

    public UserWorkexperienceType() {
    }

    public UserWorkexperienceType(int id, String name, String abbr) {
        this.id = id;
        this.name = name;
        this.abbr = abbr;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAbbr() {
        return abbr;
    }

    public void setAbbr(String abbr) {
        this.abbr = abbr;
    }

}
