package com.visitingfaculty.model.user_qualification;

public class UserQualificationType {

    private int id;
    private String name;
    private String abbr;
    @Override
    public String toString() {
        return "UserQualificationType [abbr=" + abbr + ", id=" + id + ", name=" + name + "]";
    }
    public UserQualificationType() {
    }
    public UserQualificationType(int id, String name, String abbr) {
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
