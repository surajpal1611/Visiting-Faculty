package com.visitingfaculty.dto;

public class UserDto {

    private int id;
    private String user_id;
    private String password;
    private String email;
    private String name;
    private int organization_lid;
    
    public UserDto(int id, String user_id, String password, String email, String name, int organization_lid) {
        this.id = id;
        this.user_id = user_id;
        this.password = password;
        this.email = email;
        this.name = name;
        this.organization_lid = organization_lid;
    }
    @Override
    public String toString() {
        return "UserDto [id=" + id + ", user_id=" + user_id + ", password=" + password + ", email=" + email + ", name="
                + name + ", organization_lid=" + organization_lid + "]";
    }
    public UserDto() {
    }
    public UserDto(int id, String user_id, String name, int organization_lid) {
        this.id = id;
        this.user_id = user_id;
        this.name = name;
        this.organization_lid = organization_lid;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getOrganization_lid() {
        return organization_lid;
    }
    public void setOrganization_lid(int organization_lid) {
        this.organization_lid = organization_lid;
    }

    
}
