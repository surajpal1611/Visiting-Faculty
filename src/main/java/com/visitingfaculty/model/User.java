package com.visitingfaculty.model;

public class User {

    private int id;
    private String user_id;
    private String password_hash;

    public User() {
    }
    
    public User(int id, String user_id, String password_hash) {
        this.id = id;
        this.user_id = user_id;
        this.password_hash = password_hash;
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

    @Override
    public String toString() {
        return "User [password_hash=" + password_hash + ", user_id=" + user_id + "]";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

   
}
