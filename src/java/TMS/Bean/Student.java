/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Bean;

import java.sql.Date;

/**
 *
 * @author J mala
 */
public class Student {

    public String getStudent_Id() {
        return student_Id;
    }

    public void setStudent_Id(String student_Id) {
        this.student_Id = student_Id;
    }

    public String getStudent_Name() {
        return student_Name;
    }

    public void setStudent_Name(String student_Name) {
        this.student_Name = student_Name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail_Id() {
        return email_Id;
    }

    public void setEmail_Id(String email_Id) {
        this.email_Id = email_Id;
    }

    public Long getContact_No() {
        return contact_No;
    }

    public void setContact_No(Long contact_No) {
        this.contact_No = contact_No;
    }

    public Date getReg_Date() {
        return reg_Date;
    }

    public void setReg_Date(Date reg_Date) {
        this.reg_Date = reg_Date;
    }

    public Date getLast_Edit_Date() {
        return last_Edit_Date;
    }

    public void setLast_Edit_Date(Date last_Edit_Date) {
        this.last_Edit_Date = last_Edit_Date;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getPhoto_Id() {
        return photo_Id;
    }

    public void setPhoto_Id(String photo_Id) {
        this.photo_Id = photo_Id;
    }
    private String student_Id;
    private String student_Name;
    private String gender;
    private String email_Id;
    private Long contact_No;
    private Date reg_Date;
    private Date last_Edit_Date;
    private boolean status;
    private String photo_Id;
}
