/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;
import TMS.Bean.Message;
import java.util.ArrayList;

/**
 *
 * @author J mala
 */
public interface MessageDao {
    public boolean Insert(Message message);
    public boolean Update(Message message);
    public boolean Delete(Message message);
    public ArrayList<Message> FindByReciver(String id);
}
