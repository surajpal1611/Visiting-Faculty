package com.visitingfaculty.model.user_bank_details;

public class UserBankDetails {

 private int user_Lid;
 private String name;
 private String branch;
 private String ifsc_code;
 private String micr_code;
 private String account_number;
 private String account_type;
 private String url_path;

public int getUser_Lid() {
    return user_Lid;
}
public void setUser_Lid(int user_Lid) {
    this.user_Lid = user_Lid;
}
public String getName() {
    return name;
}
public void setName(String name) {
    this.name = name;
}
public String getBranch() {
    return branch;
}
public void setBranch(String branch) {
    this.branch = branch;
}
public String getIfsc_code() {
    return ifsc_code;
}
public void setIfsc_code(String ifsc_code) {
    this.ifsc_code = ifsc_code;
}
public String getMicr_code() {
    return micr_code;
}
public void setMicr_code(String micr_code) {
    this.micr_code = micr_code;
}
public String getAccount_number() {
    return account_number;
}
public void setAccount_number(String account_number) {
    this.account_number = account_number;
}
public String getAccount_type() {
    return account_type;
}
public void setAccount_type(String account_type) {
    this.account_type = account_type;
}
public String getUrl_path() {
    return url_path;
}
public void setUrl_path(String url_path) {
    this.url_path = url_path;
}
public UserBankDetails(int user_Lid, String name, String branch, String ifsc_code, String micr_code,
        String account_number, String account_type, String url_path) {
    this.user_Lid = user_Lid;
    this.name = name;
    this.branch = branch;
    this.ifsc_code = ifsc_code;
    this.micr_code = micr_code;
    this.account_number = account_number;
    this.account_type = account_type;
    this.url_path = url_path;
}
@Override
public String toString() {
    return "UserBankDetails [account_number=" + account_number + ", account_type=" + account_type + ", branch=" + branch
            + ", ifsc_code=" + ifsc_code + ", micr_code=" + micr_code + ", name=" + name + ", url_path=" + url_path
            + ", user_Lid=" + user_Lid + "]";
}

}
