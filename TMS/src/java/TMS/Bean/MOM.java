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
public class MOM {

    public String getMeeting_Id() {
        return meeting_Id;
    }

    public void setMeeting_Id(String meeting_Id) {
        this.meeting_Id = meeting_Id;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Date getAuthor_Id() {
        return author_Id;
    }

    public void setAuthor_Id(Date author_Id) {
        this.author_Id = author_Id;
    }
 private String meeting_Id;
 private String summary;
 private Date  author_Id;
}
