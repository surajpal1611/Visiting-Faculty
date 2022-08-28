package com.visitingfaculty.model.user_bank_details;

public class UserBankAccountType {
    
    private int id;
    private String account_type;

    @Override
    public String toString() {
        return "UserBankAccountType [account_type=" + account_type + ", id=" + id + "]";
    }

    public UserBankAccountType() {
    }

    public UserBankAccountType(int id, String account_type) {
        this.id = id;
        this.account_type = account_type;
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getAccount_type() {
        return account_type;
    }
    public void setAccount_type(String account_type) {
        this.account_type = account_type;
    }
}
