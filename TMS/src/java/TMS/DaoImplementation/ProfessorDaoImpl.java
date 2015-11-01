/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Professor;
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
public class ProfessorDaoImpl implements TMS.Dao.ProfessorDao {

    ProfessorDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Professor p1) {
        String qry = "INSERT INTO `professor`(`prof_id`, `prof_name`, `contact_no`, `email_id`, `gender`, `reg_date`, "
                + "`last_edit_date`, `status`, `photo_id`) VALUES (?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);

            ps.setString(1, p1.getProf_Id());
            ps.setString(2, p1.getProf_Name());
            ps.setLong(3, p1.getContact_No());
            ps.setString(4, p1.getEmail_Id());
            ps.setString(5, p1.getGender());
            ps.setDate(6, p1.getReg_Date());
            ps.setDate(7, p1.getLast_Edit_Date());
            ps.setBoolean(8, p1.getStatus());
            ps.setString(9, p1.getPhoto_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProfessorDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Professor p1) {
        String qry = "UPDATE `professor` SET `prof_id`=?,`prof_name`=?,`contact_no`=?,`email_id`=?,`gender`=?,`reg_date`=?,`"
                + "last_edit_date`=?,`status`=?,`photo_id`=? WHERE `prof_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, p1.getProf_Id());
            ps.setString(2, p1.getProf_Name());
            ps.setLong(3, p1.getContact_No());
            ps.setString(4, p1.getEmail_Id());
            ps.setString(5, p1.getGender());
            ps.setDate(6, p1.getReg_Date());
            ps.setDate(7, p1.getLast_Edit_Date());
            ps.setBoolean(8, p1.getStatus());
            ps.setString(9, p1.getPhoto_Id());
            ps.setString(10, p1.getProf_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProfessorDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Professor p1) {
        String qry = "DELETE FROM `professor` WHERE `prof_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, p1.getProf_Id());
            if (ps.execute()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProfessorDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    private static Connection con;
}
