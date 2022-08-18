package com.visitingfaculty.dto;

public class UserDto {

    private String user_id;
    private String password_hash;
    private String email;

    public UserDto() {
    }

    public UserDto(String user_id, String password_hash, String email) {
        this.user_id = user_id;
        this.password_hash = password_hash;
        this.email = email;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPassword_hash() {
        return password_hash;
    }

    public void setPassword_hash(String password_hash) {
        this.password_hash = password_hash;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserDto [email=" + email + ", password_hash=" + password_hash + ", user_id=" + user_id + "]";
    }

}
