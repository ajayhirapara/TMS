/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.MOM;
import TMS.Bean.Meeting;
import TMS.Controller.PropertiesCache;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author J mala
 */
public class MeetingDaoImpl implements TMS.Dao.MeetingDao {

    MeetingDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Meeting meeting) {
        String qry = "INSERT INTO `meeting`(`meeting_id`, `venue`, `agenda`, `date`, `team_id`) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, PropertiesCache.getMeetingId());
            preparedStatement.setString(2, meeting.getVenue());
            preparedStatement.setString(3, meeting.getAgenda());
            preparedStatement.setDate(4, meeting.getDate());
            preparedStatement.setString(5, meeting.getTeam_id());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Meeting meeting) {
        String qry = "UPDATE `meeting` SET `meeting_id`=?,`venue`=?,`agenda`=?,`date`=?,`team_id`=? WHERE `meeting_id`=?";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, meeting.getMeeting_Id());
            preparedStatement.setString(2, meeting.getVenue());
            preparedStatement.setString(3, meeting.getAgenda());
            preparedStatement.setDate(4, meeting.getDate());
            preparedStatement.setString(5, meeting.getTeam_id());
            preparedStatement.setString(6, meeting.getMeeting_Id());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delate(Meeting meeting) {

        String qry = "DELETE FROM `meeting` WHERE `meeting_id`=?";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, meeting.getMeeting_Id());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean AddMom(MOM mom) {
        String qry = "INSERT INTO `mom`(`meeting_id`, `summary`, `author_id`, `date`) VALUES (?,?,?,?)";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, mom.getMeeting_Id());
            preparedStatement.setString(2, mom.getSummary());
            preparedStatement.setString(3, mom.getAuthor_Id());
            preparedStatement.setDate(4, mom.getDate());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Meeting> FindAllMeetingWiseStudent( String team_Id) {
        ArrayList<Meeting> meetings = null;
        Meeting meeting=null;
        String qry = "SELECT `meeting_id`, `venue`, `agenda`, `date`, `team_id` FROM `meeting` WHERE `team_id`=?";
        try {
            meeting=new Meeting();
            meetings=new ArrayList<Meeting>();
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, team_Id);
            ResultSet resultSet=preparedStatement.executeQuery();
            while(resultSet.next()){
                meeting=new Meeting();
                meeting.setMeeting_Id(resultSet.getString(1));
                meeting.setAgenda(resultSet.getString(2));
                meeting.setTeam_id(resultSet.getString(3));
                meeting.setDate(resultSet.getDate(4));
                meeting.setVenue(resultSet.getString(5));
                meeting.setMom(GetMom(resultSet.getString(1)));
                meetings.add(meeting);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return meetings;
    }
    private static MOM GetMom(String meetingId ){
        MOM mom=null;
        String qry="SELECT `meeting_id`, `summary`, `author_id`, `date` FROM `mom` WHERE `meeting_id`=?";    
        try {
            PreparedStatement preparedStatement=con.prepareStatement(qry);
            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                mom=new MOM();
                mom.setMeeting_Id(resultSet.getString(1));
                mom.setSummary(resultSet.getString(2));
                mom.setAuthor_Id(resultSet.getString(3));
                mom.setDate(resultSet.getDate(4));
            }
            return mom;
        } catch (SQLException ex) {
            Logger.getLogger(MeetingDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mom;
    }
    private static Connection con;
}
