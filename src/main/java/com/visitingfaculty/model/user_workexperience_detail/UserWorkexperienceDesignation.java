package com.visitingfaculty.model.user_workexperience_detail;

public class UserWorkexperienceDesignation {

    private int id;
    private String name;

    public UserWorkexperienceDesignation() {
    }

    public UserWorkexperienceDesignation(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public String toString() {
        return "UserWorkexperienceDesignation [id=" + id + ", name=" + name + "]";
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

}
