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
public class Task_Allocated_To {

    public String getStudent_Id() {
        return student_Id;
    }

    public void setStudent_Id(String student_Id) {
        this.student_Id = student_Id;
    }

    public int getPerformer_Type() {
        return performer_Type;
    }

    public void setPerformer_Type(int performer_Type) {
        this.performer_Type = performer_Type;
    }

    public Date getSubmission_Date() {
        return submission_Date;
    }

    public void setSubmission_Date(Date submission_Date) {
        this.submission_Date = submission_Date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDoc_Path() {
        return doc_Path;
    }

    public void setDoc_Path(String doc_Path) {
        this.doc_Path = doc_Path;
    }

    public int getEarned_Credit() {
        return earned_Credit;
    }

    public void setEarned_Credit(int earned_Credit) {
        this.earned_Credit = earned_Credit;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Date getEvaluation_Date() {
        return evaluation_Date;
    }

    public void setEvaluation_Date(Date evaluation_Date) {
        this.evaluation_Date = evaluation_Date;
    }

    public String getStudent_Name() {
        return student_Name;
    }

    public void setStudent_Name(String student_Name) {
        this.student_Name = student_Name;
    }
    private String student_Name;
    private String student_Id; 
    private int  performer_Type;
    private Date submission_Date;
    private String description;
    private String  doc_Path ;
    private int earned_Credit ;
    private String feedback ;
    private Date evaluation_Date;
}
