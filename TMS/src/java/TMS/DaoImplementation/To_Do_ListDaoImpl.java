/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.To_Do_List;
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
public class To_Do_ListDaoImpl implements TMS.Dao.To_Do_ListDao {
    To_Do_ListDaoImpl(){
         try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public boolean Insert(To_Do_List to_Do_List) {
        String qry="INSERT INTO `to_do_list`(`to_do_list_id`, `id`, `date`, `status`, `title`, `delete`) VALUES (?,?,?,?,?,?)";
       try {
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, PropertiesCache.getTo_Do_ListId());
            ps.setString(2, to_Do_List.getId());
            ps.setDate(3, to_Do_List.getTarget_Date());
            ps.setBoolean(4, to_Do_List.isStatus());
            ps.setString(5, to_Do_List.getTitle());
            ps.setBoolean(6,false );
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(To_Do_ListDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
             return false;
       
    }

    @Override
    public boolean Delete(To_Do_List to_Do_List) {
        try {
            String qry="DELETE FROM `to_do_list` WHERE `to_do_list_id`=?";
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, to_Do_List.getTo_Do_List_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(To_Do_ListDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<To_Do_List> To_Do_List_OF_type(String Id) {
         ArrayList<To_Do_List> to_Do_Lists=new ArrayList<To_Do_List>();
        try {
           
            String qry="SELECT `to_do_list_id`, `id`, `date`, `status`, `title` FROM `to_do_list` WHERE `id`=? and  `delete`=0";
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, Id);
            ResultSet resultSet=ps.executeQuery();
            while(resultSet.next()){
                To_Do_List do_List=new To_Do_List();
                do_List.setTo_Do_List_Id(resultSet.getString(1));
                do_List.setId(resultSet.getString(2));
                do_List.setTarget_Date(resultSet.getDate(3));
                do_List.setStatus(resultSet.getBoolean(4));
                do_List.setTitle(resultSet.getString(5));
                to_Do_Lists.add(do_List);
            }
        } catch (SQLException ex) {
            Logger.getLogger(To_Do_ListDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return to_Do_Lists;
    }
    
    private static Connection con;

}
