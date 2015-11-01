/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Student;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author J mala
 */
public class StudentDaoImpl implements TMS.Dao.StudentDao {

    StudentDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Student s1) {
        String qry = "INSERT INTO `student`(`student_id`, `student_name`, `gender`, `email_id`, `contact_no`, `reg_date`, `last_edit_date`, "
                + "`status`, `photo_id`) VALUES (?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);

            ps.setString(1, s1.getStudent_Id());
            ps.setString(2, s1.getStudent_Name());
            ps.setString(3, s1.getGender());
            ps.setString(4, s1.getEmail_Id());
            ps.setLong(5, s1.getContact_No());
            ps.setDate(6, s1.getReg_Date());
            ps.setDate(7, s1.getLast_Edit_Date());
           
            ps.setBoolean(8, s1.getStatus());
            ps.setString(9, s1.getPhoto_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Student s1) {
    String qry = "UPDATE `student` SET `student_id`=?, `student_name`=?,`gender`=?,`email_id`=?,`contact_no`=?,`reg_date`= ?,"
            + "`last_edit_date`=?,`status`=?,`photo_id`=? WHERE `student_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);

            ps.setString(1, s1.getStudent_Id());
            ps.setString(2, s1.getStudent_Name());
            ps.setString(3, s1.getGender());
            ps.setString(4, s1.getEmail_Id());
            ps.setLong(5, s1.getContact_No());
            ps.setDate(6, s1.getReg_Date());
            ps.setDate(7, s1.getLast_Edit_Date());
            ps.setBoolean(8, s1.getStatus());
            ps.setString(9, s1.getPhoto_Id());
            ps.setString(10, s1.getStudent_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Student s1) {
    String qry = "DELETE FROM `student` WHERE `student_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, s1.getStudent_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    private static Connection con;
}
