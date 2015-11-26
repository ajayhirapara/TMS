/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.TableId;
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
public class TableIdDaoImpl implements TMS.Dao.TableIdDao {

    TableIdDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TeamDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public boolean UPDATE(TableId tableId) {
        try {
            String qry = "UPDATE `tableid` SET `student_id`=?,`to_do_listId`=?,`coursesId`=?,`meetingId`=?,`pollId`=?,"
                    + "`professorId`=?,`teamId`=?,`coffId`=?,`messageId`=?,`taskId`=?,`mentorId`=?,`instituteId`=? WHERE `id`=1";
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setInt(1, tableId.getStudentId());
            preparedStatement.setInt(2, tableId.getTo_do_listId());
            preparedStatement.setInt(3, tableId.getCoursesId());
            preparedStatement.setInt(4, tableId.getMeetingId());
            preparedStatement.setInt(5, tableId.getPollId());
            preparedStatement.setInt(6, tableId.getProfessorId());
            preparedStatement.setInt(7, tableId.getTeamId());
            preparedStatement.setInt(8, tableId.getCoffId());
            preparedStatement.setInt(9, tableId.getMessageId());
            preparedStatement.setInt(10, tableId.getTaskId());
            preparedStatement.setInt(11, tableId.getMentorId());
            preparedStatement.setInt(12, tableId.getInstituteId());
            return preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TableIdDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }

    @Override
    public TableId GetTableIdDetail() {
        String qry = "SELECT `student_id`,`to_do_listId`, `coursesId`, `meetingId`, `pollId`, `professorId`, `teamId`, `coffId`,"
                + " `messageId`, `taskId`, `mentorId`, `instituteId` FROM `tableid` WHERE `id`=?";
        TableId tableId = new TableId();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setInt(1, 1);
            ResultSet rs=preparedStatement.executeQuery();
            if(rs.next()){
            tableId.setCoffId(rs.getInt(1));
            tableId.setTo_do_listId(rs.getInt(2));
            tableId.setCoursesId(rs.getInt(3));
            tableId.setMeetingId(rs.getInt(4));
            tableId.setPollId(rs.getInt(5));
            tableId.setProfessorId(rs.getInt(6));
            tableId.setTeamId(rs.getInt(7));
            tableId.setCoffId(rs.getInt(8));
            tableId.setMessageId(rs.getInt(9));
            tableId.setTaskId(rs.getInt(10));
            tableId.setMentorId(rs.getInt(11));
            tableId.setInstituteId(rs.getInt(12));
            return tableId;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableIdDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tableId;
    }
    private static Connection con;
    public static void main(String[] args) {
        TableIdDaoImpl tableIdDaoImpl=new TableIdDaoImpl();
        System.out.println(tableIdDaoImpl.GetTableIdDetail().getCoffId());
    }
}
