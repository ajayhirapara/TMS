/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Enroll;
import TMS.Bean.Student;
import TMS.Controller.PropertiesCache;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

            ps.setString(1, PropertiesCache.getStudentId());
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

    @Override
    public Student FinndByEmailId(String EmailId) {

        String qry = "SELECT `student_id`, `student_name`, `gender`, `email_id`, `contact_no`, `reg_date`, "
                + "`last_edit_date`, `status`, `photo_id` FROM `student` WHERE `email_id`=?";
        Student student = new Student();
        try {
            PreparedStatement ps = con.prepareStatement(qry);
            ps.setString(1, EmailId);
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                student.setStudent_Id(resultSet.getString(1));
                student.setStudent_Name(resultSet.getString(2));
                student.setGender(resultSet.getString(3));
                student.setEmail_Id(resultSet.getString(4));
                student.setContact_No(resultSet.getLong(5));
                student.setReg_Date(resultSet.getDate(6));
                student.setLast_Edit_Date(resultSet.getDate(7));
                student.setStatus(resultSet.getBoolean(8));
                student.setPhoto_Id(resultSet.getString(9));
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return student;
    }
    private static Connection con;

    @Override
    public boolean EnrollCourses(Enroll enroll) {
        try {
            String qry = "INSERT INTO `enroll`(`coff_id`, `student_id`, `cpi`, `batch`, `enrollment_date`) VALUES (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(qry);
            ps.setString(1, enroll.getCoff_Id());
            ps.setString(2, enroll.getStudent_Id());
            ps.setInt(3, enroll.getCpi());
            ps.setInt(4, enroll.getBatch());
            ps.setDate(5, enroll.getEnrollment_Date());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
