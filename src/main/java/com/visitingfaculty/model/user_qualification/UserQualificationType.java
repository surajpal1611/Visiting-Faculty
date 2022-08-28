package com.visitingfaculty.model.user_qualification;

public class UserQualificationType {

    private int id;
    private String name;

    @Override
    public String toString() {
        return "UserQualificationType [id=" + id + ", name=" + name + "]";
    }

    public UserQualificationType() {
    }

    public UserQualificationType(int id, String name) {
        this.id = id;
        this.name = name;
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
