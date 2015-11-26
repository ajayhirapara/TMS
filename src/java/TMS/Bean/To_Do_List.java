/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Bean;

import java.sql.Date;
import javax.print.DocFlavor;

/**
 *
 * @author J mala
 */
public class To_Do_List {

    public String getTo_Do_List_Id() {
        return to_Do_List_Id;
    }

    public void setTo_Do_List_Id(String to_Do_List_Id) {
        this.to_Do_List_Id = to_Do_List_Id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getTarget_Date() {
        return target_Date;
    }

    public void setTarget_Date(Date target_Date) {
        this.target_Date = target_Date;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    private String to_Do_List_Id;
    private String id;
    private Date target_Date;
    private boolean status;
    private String title;
}
