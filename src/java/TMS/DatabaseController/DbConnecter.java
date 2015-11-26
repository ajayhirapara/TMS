/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DatabaseController;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author J mala
 */
public class DbConnecter {

    private DbConnecter() throws ClassNotFoundException, SQLException {
        Class.forName(DB_Driver);
        con = DriverManager.getConnection(DB_URL, DB_User, DB_Pwd);
        System.out.println("open database successfully");
    }

    public static DbConnecter getInstance()
            throws ClassNotFoundException, SQLException {
        synchronized(DbConnecter.class){
        if (instance ==null) {
            instance = new DbConnecter();
        }
        }
        return instance;
    }

    public Connection getConnection() {
        return con;
    }

    public void close() throws SQLException {
        con.close();
        instance = null;
    }

    private final String DB_URL = "jdbc:mysql://localhost:3306/tms";
    //private final String DB_URL = "jdbc:mysql://db4free.net:3306/tms_acad_db";
    //private final String DB_User = "tms_acad";
    ///private final String DB_Pwd = "tms510";
    private final String DB_User = "root";
    private final String DB_Pwd = "";
    private final String DB_Driver = "com.mysql.jdbc.Driver";
    private final Connection con;
    private static DbConnecter instance = null;

}
