package com.visitingfaculty.model;

public class Resume {

    private int user_lid;
    private String name;
    private String description;

    public Resume() {
    }


    public Resume(int user_lid, String name, String description) {
        this.user_lid = user_lid;
        this.name = name;
        this.description = description;
    }


    @Override
    public String toString() {
        return "Resume [description=" + description + ", name=" + name + ", user_lid=" + user_lid + "]";
    }

    public int getUser_lid() {
        return user_lid;
    }

    public void setUser_lid(int user_lid) {
        this.user_lid = user_lid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    
}
