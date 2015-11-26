/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Meeting;
import TMS.Bean.MOM;
import java.util.ArrayList;
/**
 *
 * @author J mala
 */
public interface MeetingDao {
    public boolean Insert(Meeting meeting);
    public boolean Update(Meeting meeting);
    public boolean Delate(Meeting meeting);
    public boolean AddMom(MOM mom);
    public ArrayList<Meeting> FindAllMeetingWiseStudent(String team_Id);
    
}
