package com.visitingfaculty.model.user_qualification;

public class UserQualification {
    private String qualification_type_lid;
    private String topic_of_study;
    private String university;
    private String institute;
    private String percentile;
    private String year_of_passing;
    private String url_path;

    @Override
    public String toString() {
        return "UserQualification [institute=" + institute + ", percentile=" + percentile + ", qualification_type_lid="
                + qualification_type_lid + ", topic_of_study=" + topic_of_study + ", university=" + university
                + ", url_path=" + url_path + ", year_of_passing=" + year_of_passing + "]";
    }

    public UserQualification() {
    }

    public UserQualification(String qualification_type_lid, String topic_of_study, String university, String institute,
            String percentile, String year_of_passing, String url_path) {
        this.qualification_type_lid = qualification_type_lid;
        this.topic_of_study = topic_of_study;
        this.university = university;
        this.institute = institute;
        this.percentile = percentile;
        this.year_of_passing = year_of_passing;
        this.url_path = url_path;
    }
    
    public String getQualification_type_lid() {
        return qualification_type_lid;
    }
    public void setQualification_type_lid(String qualification_type_lid) {
        this.qualification_type_lid = qualification_type_lid;
    }
    public String getTopic_of_study() {
        return topic_of_study;
    }
    public void setTopic_of_study(String topic_of_study) {
        this.topic_of_study = topic_of_study;
    }
    public String getUniversity() {
        return university;
    }
    public void setUniversity(String university) {
        this.university = university;
    }
    public String getInstitute() {
        return institute;
    }
    public void setInstitute(String institute) {
        this.institute = institute;
    }
    public String getPercentile() {
        return percentile;
    }
    public void setPercentile(String percentile) {
        this.percentile = percentile;
    }
    public String getYear_of_passing() {
        return year_of_passing;
    }
    public void setYear_of_passing(String year_of_passing) {
        this.year_of_passing = year_of_passing;
    }
    public String getUrl_path() {
        return url_path;
    }
    public void setUrl_path(String url_path) {
        this.url_path = url_path;
    }
}
