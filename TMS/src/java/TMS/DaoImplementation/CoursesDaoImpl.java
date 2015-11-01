/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Courses;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ajay
 * @
 */
public class CoursesDaoImpl implements TMS.Dao.CoursesDao {

    CoursesDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Courses co) {
        String qry = "INSERT INTO `course`(`course_id`, `course_name`, `credit`, `description`, `domain`, `status`, `reg_date`) VALUES (?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, co.getCourse_id());
            ps.setString(2, co.getCourse_name());
            ps.setInt(3, co.getCredit());
            ps.setString(4, co.getDescription());
            ps.setString(5, co.getDomain());
            ps.setBoolean(6, co.isStatus());
            ps.setDate(7, co.getReg_date());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Courses co) {
        String qry = "UPDATE `course` SET `course_id`=?,`course_name`=?,`credit`=?,`description`=?,`domain`=?,`status`=?,`reg_date`=? WHERE `course_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, co.getCourse_id());
            ps.setString(2, co.getCourse_name());
            ps.setInt(3, co.getCredit());
            ps.setString(4, co.getDescription());
            ps.setString(5, co.getDomain());
            ps.setBoolean(6, co.isStatus());
            ps.setDate(7, co.getReg_date());
            ps.setString(8, co.getCourse_id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Courses co) {
        String qry = "DELETE FROM `course` WHERE `course_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, co.getCourse_id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Courses> ActiveCourses() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Courses> FinishCourses() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Courses> ListOfProfesserWiseCourses(String pro_Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private static Connection con;
}
