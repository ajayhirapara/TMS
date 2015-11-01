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
public class Team {

    public String getTeam_Id() {
        return team_Id;
    }

    public void setTeam_Id(String team_Id) {
        this.team_Id = team_Id;
    }

    public String getTeam_Name() {
        return team_Name;
    }

    public void setTeam_Name(String team_Name) {
        this.team_Name = team_Name;
    }

    public Date getFormation_Date() {
        return formation_Date;
    }

    public void setFormation_Date(Date formation_Date) {
        this.formation_Date = formation_Date;
    }

    public Date getValidation_Date() {
        return validation_Date;
    }

    public void setValidation_Date(Date validation_Date) {
        this.validation_Date = validation_Date;
    }

    public String getCoff_Id() {
        return coff_Id;
    }

    public void setCoff_Id(String coff_Id) {
        this.coff_Id = coff_Id;
    }

    public String getMenter_Id() {
        return menter_Id;
    }

    public void setMenter_Id(String menter_Id) {
        this.menter_Id = menter_Id;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
    public String getTeam_Leader_Id() {
        return team_Leader_Id;
    }

    public void setTeam_Leader_Id(String team_Leader_Id) {
        this.team_Leader_Id = team_Leader_Id;
    }
    public ArrayList<Student> getTeam_Member() {
        return team_Member;
    }

    public void setTeam_Member(ArrayList<Student> team_Member) {
        this.team_Member = team_Member;
    }
    private String team_Id;
    private String team_Name;
    private Date formation_Date;
    private Date validation_Date;
    private String  coff_Id;
    private String menter_Id;
    private String logo;
    private String team_Leader_Id;
    private ArrayList<Student> team_Member;

    
}
