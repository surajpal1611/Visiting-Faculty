package com.visitingfaculty.dto;

public class UserDto {

    private String user_id;
    private String password;
    private String email;

    public UserDto() {
    }

    public UserDto(String user_id, String password, String email) {
        this.user_id = user_id;
        this.password = password;
        this.email = email;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPassword_hash() {
        return password;
    }

    public void setPassword_hash(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserDto [email=" + email + ", password=" + password + ", user_id=" + user_id + "]";
    }

}
