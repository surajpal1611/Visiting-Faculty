package com.visitingfaculty.model.faculty_personal_details;

public class FacultyInfo {

    private int id;
    private String f_name;
    private String l_name;
    private String email;
    private String date_of_birth;
    private int gender_lid;
    private String nationality;

    public FacultyInfo() {
    }

    public FacultyInfo(String f_name, String l_name, String email, String date_of_birth, int gender_lid,
            String nationality) {
        this.f_name = f_name;
        this.l_name = l_name;
        this.email = email;
        this.date_of_birth = date_of_birth;
        this.gender_lid = gender_lid;
        this.nationality = nationality;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public int getGender_lid() {
        return gender_lid;
    }

    public void setGender_lid(int gender_lid) {
        this.gender_lid = gender_lid;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "FacultyInfo [date_of_birth=" + date_of_birth + ", email=" + email + ", f_name=" + f_name
                + ", gender_lid=" + gender_lid + ", id=" + id + ", l_name=" + l_name + ", nationality=" + nationality
                + "]";
    }
}
