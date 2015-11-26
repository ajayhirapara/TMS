/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Student;
import TMS.Bean.Team;
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
 * @author astha
 */
public class TeamDaoImpl implements TMS.Dao.TeamDAO {

    private static Connection con;

    TeamDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Team team) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "INSERT INTO `team`(`team_id`, `team_name`, `formation_date`, `validation_date`, `coff_id`, `mentor_id`, `logo`) VALUES (?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, PropertiesCache.getTeamId());
            ps.setString(2, team.getTeam_Name());
            ps.setDate(3, team.getFormation_Date());
            ps.setDate(4, team.getValidation_Date());
            ps.setString(5, team.getCoff_Id());
            ps.setString(6, team.getMenter_Id());
            ps.setString(7, team.getLogo());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Team team) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "UPDATE `team` SET `team_id`=?,`team_name`=?,`formation_date`=?,`validation_date`=?,`coff_id`=?,`mentor_id`=?,`logo`=? WHERE `team_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, team.getTeam_Id());
            ps.setString(2, team.getTeam_Name());
            ps.setDate(3, team.getFormation_Date());
            ps.setDate(4, team.getValidation_Date());
            ps.setString(5, team.getCoff_Id());
            ps.setString(6, team.getMenter_Id());
            ps.setString(7, team.getLogo());
            ps.setString(1, team.getTeam_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Team team) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "DELETE FROM `team` WHERE `team_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, team.getTeam_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Team> ListOfTeamWiseStudent(String student_Id) {

        String qry = "select team.* from team JOIN team_member on team.team_id=team_member.team_id"
                + " where team_member.student_id=?";
        Team team = null;
        ArrayList<Team> teams=null;
        try {
            teams=new ArrayList<Team>();
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, student_Id);
          
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                team = new Team();
                team.setCoff_Id(resultSet.getString("coff_id"));
                team.setFormation_Date(resultSet.getDate("formation_date"));
                team.setLogo(resultSet.getString("logo"));
                team.setMenter_Id(resultSet.getString("mentor_id"));
                team.setTeam_Id(resultSet.getString("team_id"));
                team.setTeam_Leader_Id(resultSet.getString("student_id"));
                team.setTeam_Member(ListOfAllTeamMembar(resultSet.getString("team_id")));
                team.setTeam_Name(resultSet.getString("team_name"));
                team.setValidation_Date(resultSet.getDate("validation_date"));
                teams.add(team);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return teams;
    }

    @Override
    public ArrayList<Team> ListOfTeamOfCourseWiseProfessor(String professor_Id, String Courses) {
       
            ArrayList<Team> teams = null;
            Team team=null;
            String qry = "select team.* from team join "
                    + "(select course_offered.coff_id from course_offered where course_offered.proffid=? "
                    + "AND course_offered.course_id=?) as coff on team.coff_id = coff.coff_id";
        try {
            teams=new ArrayList<Team>();
            PreparedStatement preparedStatement=con.prepareStatement(qry);
            preparedStatement.setString(1, professor_Id);
            preparedStatement.setString(2, Courses);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                team = new Team();
                team.setCoff_Id(resultSet.getString("coff_id"));
                team.setFormation_Date(resultSet.getDate("formation_date"));
                team.setLogo(resultSet.getString("logo"));
                team.setMenter_Id(resultSet.getString("mentor_id"));
                team.setTeam_Id(resultSet.getString("team_id"));
                team.setTeam_Leader_Id(resultSet.getString("student_id"));
                team.setTeam_Member(ListOfAllTeamMembar(resultSet.getString("team_id")));
                team.setTeam_Name(resultSet.getString("team_name"));
                team.setValidation_Date(resultSet.getDate("validation_date"));
                teams.add(team);
            }
        
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
            return teams;
    }

    private static ArrayList<Student> ListOfAllTeamMembar(String team_Id) {
        ArrayList<Student> students = new ArrayList<Student>();
        String qry = "SELECT * FROM  student JOIN (SELECT * from team_member WHERE team_member.team_id=?)"
                + " AS teamStudent ON student.student_id=teamstudent.student_id ";
        Student student = null;
        PreparedStatement preparedStatement;
        try {
            preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, team_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                student = new Student();
                student.setContact_No(resultSet.getLong("contact_no"));
                student.setEmail_Id(resultSet.getString("email_id"));
                student.setGender(resultSet.getString("gender"));
                student.setLast_Edit_Date(resultSet.getDate("last_edit_date"));
                student.setPhoto_Id(resultSet.getString("photo_ids"));
                student.setReg_Date(resultSet.getDate("reg_date"));
                student.setStatus(resultSet.getBoolean("status"));
                student.setStudent_Id(resultSet.getString("student_id"));
                student.setStudent_Name(resultSet.getString("student_name"));
                students.add(student);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    @Override
    public Team ListOfTeamWiseStudent(String student_Id, String coffId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
