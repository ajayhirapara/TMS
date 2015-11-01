/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Login;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ajay
 */
public class LoginDaoImpl implements TMS.Dao.LoginDAO {

    LoginDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Login l1) {
        String qry = "INSERT INTO login(`email_id`, `password`, `type`, `status`) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(qry);
            ps.setString(1, l1.getEmail_Id());
            ps.setString(2, l1.getPassword());
            ps.setInt(3, l1.getType());
            ps.setBoolean(4, Boolean.FALSE);
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Login l1) {
        String qry = "UPDATE `login` SET `password`=?,`type`=?,`status`=? WHERE `email_id`=? ";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, l1.getPassword());
            ps.setInt(2, l1.getType());
            ps.setBoolean(3, l1.isStatus());
            ps.setString(4, l1.getEmail_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Login l1) {
        String qry="DELETE FROM `login` WHERE `email_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, l1.getEmail_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Authentication(Login l1) {
       String qry="SELECT * \n" +
"FROM  `login` \n" +
"WHERE  `email_id` =  ?\n" +
"AND  `password` =?\n" +
"AND  `status` =1";
       PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, l1.getEmail_Id());
            ps.setString(2, l1.getPassword());
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                return true;
            }
            
       } catch (SQLException ex) {
            Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
       }
        return false;
    }
    private static Connection con;
}
