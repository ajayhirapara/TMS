/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Message;
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
public class MessageDaoImpl implements TMS.Dao.MessageDao {

    MessageDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean Insert(Message message) {
        String qry = "INSERT INTO `message`(`message_id`, `from`, `description`, `subject`, `attachment_path`) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, PropertiesCache.getMessageId());
            preparedStatement.setString(2, message.getFrom());
            preparedStatement.setString(3, message.getDescription());
            preparedStatement.setString(4, message.getSubject());
            preparedStatement.setString(5, message.getAttachment_Path());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Update(Message message) {

        String qry = "UPDATE `message` SET `message_id`=?,`from`=?,`description`=?,`subject`=?,`attachment_path`=? WHERE `message_id`=?";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, message.getMessage_Id());
            preparedStatement.setString(2, message.getFrom());
            preparedStatement.setString(3, message.getDescription());
            preparedStatement.setString(4, message.getSubject());
            preparedStatement.setString(5, message.getAttachment_Path());
            preparedStatement.setString(6, message.getMessage_Id());

            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Message message) {
        String qry = "DELETE FROM `message` WHERE `message_id`=?";
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, message.getMessage_Id());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Message> FindByReciver(String id) {
        String qry = "select message.* from message join message_recipients on message.message_id=message_recipients.message_id WHERE message_recipients.to=?";
        ArrayList<Message> messages = null;
        Message message = null;
        try {
            messages = new ArrayList<Message>();
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                message = new Message();
                message.setMessage_Id(resultSet.getString("message_id"));
                message.setSubject(resultSet.getString("from"));
                message.setFrom(resultSet.getString("description"));
                message.setAttachment_Path(resultSet.getString("subject"));
                message.setDescription(resultSet.getString("attachment_path"));
                messages.add(message);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MessageDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return messages;
    }
    private static Connection con;
}
