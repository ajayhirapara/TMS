/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Mentor;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author J mala
 */
public class MentorDaoImpl implements TMS.Dao.MentorDao{

    MentorDaoImpl() {
       try {
             con=DbConnecter.getInstance().getConnection();
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(MentorDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
         } catch (SQLException ex) {
             Logger.getLogger(MentorDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    
    @Override
    public boolean Insert(Mentor m1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Update(Mentor m1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean Delete(Mentor m1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    private static Connection con;
}
