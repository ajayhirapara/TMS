/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Courses;
import TMS.Controller.PropertiesCache;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            ps.setString(1, PropertiesCache.getCoursesId());
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
    public ArrayList<Courses> ActiveCourses(String professor_Id) {
        String qry = "SELECT course.* FROM course JOIN course_offered ON course.course_id=course_offered.course_id WHERE course_offered.proffid=? AND"
                + " course.status=1 and course_offered.course_start_date < NOW() AND course_offered.course_end_date > NOW() ";
        ArrayList<Courses> courseses = new ArrayList<Courses>();
        try {

            Courses c = null;
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, professor_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                c = new Courses();
                c.setCourse_id(resultSet.getString("course_id"));
                c.setCourse_name(resultSet.getString("course_name"));
                c.setCredit(resultSet.getInt("credit"));
                c.setDescription(resultSet.getString("description"));
                c.setDomain(resultSet.getString("domain"));
                c.setReg_date(resultSet.getDate("reg_date"));
                c.setStatus(resultSet.getBoolean("status"));
                courseses.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courseses;
    }

    @Override
    public ArrayList<Courses> FinishCourses(String professor_Id) {
        String qry = "SELECT course.* FROM course JOIN course_offered ON course.course_id=course_offered.course_id WHERE course_offered.proffid=? "
                + "and course.status=1 and course_offered.course_end_date < NOW()";
        ArrayList<Courses> courseses = new ArrayList<Courses>();
        try {

            Courses c = null;
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, professor_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                c = new Courses();
                c.setCourse_id(resultSet.getString("course_id"));
                c.setCourse_name(resultSet.getString("course_name"));
                c.setCredit(resultSet.getInt("credit"));
                c.setDescription(resultSet.getString("description"));
                c.setDomain(resultSet.getString("domain"));
                c.setReg_date(resultSet.getDate("reg_date"));
                c.setStatus(resultSet.getBoolean("status"));
                courseses.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courseses;
    }

   // @Override
//    public ArrayList<Courses> ListOfProfesserWiseCourses(String pro_Id) {
//        String qry = "";
//        ArrayList<Courses> courseses = new ArrayList<Courses>();
//        try {
//
//            Courses c = null;
//            PreparedStatement preparedStatement = con.prepareStatement(qry);
//            preparedStatement.setString(1, pro_Id);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                c = new Courses();
//                c.setCourse_id(resultSet.getString(1));
//                c.setCourse_name(resultSet.getString(2));
//                c.setCredit(resultSet.getInt(3));
//                c.setDescription(resultSet.getString(4));
//                c.setDomain(resultSet.getString(5));
//                c.setReg_date(resultSet.getDate(6));
//                c.setStatus(resultSet.getBoolean(7));
//                courseses.add(c);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return courseses;
//    }
    private static Connection con;

    @Override
    public ArrayList<Courses> ActiveCoursesStudentWise(String StudentId) {
         String qry = "SELECT coursejoin.*  from (SELECT course.*,course_offered.coff_id,course_offered.course_start_date,course_offered.course_end_date,course_offered.proffid FROM course JOIN course_offered ON course.course_id=course_offered.course_id) as coursejoin JOIN enroll ON coursejoin.coff_id=enroll.coff_id WHERE enroll.student_id=? AND coursejoin.course_start_date <NOW() AND coursejoin.course_end_date > NOW()";
        ArrayList<Courses> courseses = new ArrayList<Courses>();
        try {

            Courses c = null;
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1,StudentId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                c = new Courses();
                c.setCourse_id(resultSet.getString("course_id"));
                c.setCourse_name(resultSet.getString("course_name"));
                c.setCredit(resultSet.getInt("credit"));
                c.setDescription(resultSet.getString("description"));
                c.setDomain(resultSet.getString("domain"));
                c.setReg_date(resultSet.getDate("reg_date"));
                c.setStatus(resultSet.getBoolean("status"));
                courseses.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courseses;
    }

    @Override
    public ArrayList<Courses> FinishCoursesStudentWise(String StudentId) {
        String qry = "SELECT coursejoin.*  from (SELECT course.*,course_offered.coff_id,course_offered.course_start_date,course_offered.course_end_date,course_offered.proffid FROM course JOIN course_offered ON course.course_id=course_offered.course_id) as coursejoin JOIN enroll ON coursejoin.coff_id=enroll.coff_id WHERE enroll.student_id=? AND coursejoin.course_start_date <NOW() AND coursejoin.course_end_date < NOW()";
        ArrayList<Courses> courseses = new ArrayList<Courses>();
        try {

            Courses c = null;
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, StudentId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                c = new Courses();
                c.setCourse_id(resultSet.getString("course_id"));
                c.setCourse_name(resultSet.getString("course_name"));
                c.setCredit(resultSet.getInt("credit"));
                c.setDescription(resultSet.getString("description"));
                c.setDomain(resultSet.getString("domain"));
                c.setReg_date(resultSet.getDate("reg_date"));
                c.setStatus(resultSet.getBoolean("status"));
                courseses.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courseses;
    }
    public static void main(String[] args) {
        CoursesDaoImpl coursesDaoImpl=new CoursesDaoImpl();
        
        Courses courses=new Courses();
      //  courses.setCourse_id();
        courses.setCourse_name("tester");
        courses.setCredit(2);
        courses.setDescription("tester");
        courses.setDomain("tester");
        courses.setReg_date(new Date(new java.util.Date().getTime()));
        courses.setStatus(true);
        coursesDaoImpl.Insert(courses);
    }

    @Override
    public Courses GetDetailsCourses(String co_Id) {
        String qry=" SELECT `course_id`, `course_name`, `credit`, `description`, `domain`, `status`, `reg_date` FROM `course` WHERE `course_id`=?";
        Courses courses=null;
        try {
            PreparedStatement preparedStatement=con.prepareStatement(qry);
            preparedStatement.setString(1, co_Id);
            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                courses=new Courses();
               courses.setCourse_id(resultSet.getString("course_id"));
               return courses;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
       return courses;
       
    }
    
}
