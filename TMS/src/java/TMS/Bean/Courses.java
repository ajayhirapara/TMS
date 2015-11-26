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
public class Courses {

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id
        (String course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
     }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
    public Date getCoffId() {
        return coffId;
    }

    public void setCoffId(Date coffId) {
        this.coffId = coffId;
    }
    private String course_id;
    private String course_name;
    private int credit;
    private String description;
    private String domain;
    private boolean status;
    private Date reg_date;
    private Date coffId;
}
