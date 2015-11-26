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
public class Enroll {

    public String getCoff_Id() {
        return coff_Id;
    }

    public void setCoff_Id(String coff_Id) {
        this.coff_Id = coff_Id;
    }

    public String getStudent_Id() {
        return student_Id;
    }

    public void setStudent_Id(String student_Id) {
        this.student_Id = student_Id;
    }

    public int getCpi() {
        return cpi;
    }

    public void setCpi(int cpi) {
        this.cpi = cpi;
    }

    public int getBatch() {
        return batch;
    }

    public void setBatch(int batch) {
        this.batch = batch;
    }

    public Date getEnrollment_Date() {
        return enrollment_Date;
    }

    public void setEnrollment_Date(Date enrollment_Date) {
        this.enrollment_Date = enrollment_Date;
    }
    private String coff_Id;
    private String student_Id;
    private int cpi;
    private int batch;
    private Date enrollment_Date;
}
