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
public class Meeting {

    public String getMeeting_Id() {
        return meeting_Id;
    }

    public void setMeeting_Id(String meeting_Id) {
        this.meeting_Id = meeting_Id;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getAgenda() {
        return agenda;
    }

    public void setAgenda(String agenda) {
        this.agenda = agenda;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    public MOM getMom() {
        return mom;
    }

    public void setMom(MOM mom) {
        this.mom = mom;
    }
   
    public String getTeam_id() {
        return team_id;
    }

    public void setTeam_id(String team_id) {
        this.team_id = team_id;
    }
    private String meeting_Id;
    private String venue;
    private String agenda;
    private Date date;
    private String team_id;
    private MOM mom;
}
