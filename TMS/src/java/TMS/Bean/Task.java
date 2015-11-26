/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Bean;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author J mala
 */
public class Task {

    public String getTask_Id() {
        return task_Id;
    }

    public void setTask_Id(String task_Id) {
        this.task_Id = task_Id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Date getDeadline_Date() {
        return deadline_Date;
    }

    public void setDeadline_Date(Date deadline_Date) {
        this.deadline_Date = deadline_Date;
    }

    public Date getGiven_Date() {
        return given_Date;
    }

    public void setGiven_Date(Date given_Date) {
        this.given_Date = given_Date;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getType_Task() {
        return type_Task;
    }

    public void setType_Task(String type_Task) {
        this.type_Task = type_Task;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAssigned_By() {
        return assigned_By;
    }

    public void setAssigned_By(String assigned_By) {
        this.assigned_By = assigned_By;
    }

    public String getAssigned_category() {
        return assigned_category;
    }

    public void setAssigned_category(String assigned_category) {
        this.assigned_category = assigned_category;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public int getProgress() {
        return progress;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }
    public ArrayList<Task_Allocated_To> getTask_Allocated_Tos() {
        return task_Allocated_Tos;
    }

    public void setTask_Allocated_Tos(ArrayList<Task_Allocated_To> task_Allocated_Tos) {
        this.task_Allocated_Tos = task_Allocated_Tos;
    }
    
    public String getCoff_Id() {
        return coff_Id;
    }

    public void setCoff_Id(String coff_Id) {
        this.coff_Id = coff_Id;
    }
    private String task_Id ;
    private String subject;
    private Date deadline_Date;
    private Date given_Date;
    private int credit;
    private String type_Task;
    private String description;
    private String assigned_By;
    private String assigned_category;
    private String venue ;
    private int progress ;
    private String coff_Id;
    private ArrayList<Task_Allocated_To> task_Allocated_Tos;
}
