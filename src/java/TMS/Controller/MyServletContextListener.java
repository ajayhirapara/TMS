package TMS.Controller;

import TMS.Bean.TableId;
import TMS.Dao.TableIdDao;
import TMS.DaoImplementation.ObjectFactory;
import TMS.DaoImplementation.TableIdDaoImpl;
import TMS.DatabaseController.DbConnecter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletContextEvent;

public class MyServletContextListener implements ServletContextListener{

   @Override
   public void contextInitialized(ServletContextEvent contextEvent) {
        try {
            System.out.println("\n\n\n\n\nTMS start run\n\n\n\n\n");
            TableId tableId=new TableId();
            String qry = "SELECT `student_id`,`to_do_listId`, `coursesId`, `meetingId`, `pollId`, `professorId`, `teamId`, `coffId`,"
                    + " `messageId`, `taskId`, `mentorId`, `instituteId` FROM `tableid` WHERE `id`=?";
            Connection con=DbConnecter.getInstance().getConnection();
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
                    contextEvent.getServletContext().setAttribute(constrants.sessionTableId, tableId);
                    System.out.println(tableId.getCoffId());
                }
            } catch (SQLException ex) {
                Logger.getLogger(MyServletContextListener.class.getName()).log(Level.SEVERE, null, ex);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyServletContextListener.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           Logger.getLogger(MyServletContextListener.class.getName()).log(Level.SEVERE, null, ex);
       }
        
   }

   @Override
   public void contextDestroyed(ServletContextEvent contextEvent) {
       
      TableId tableId=(TableId)contextEvent.getServletContext().getAttribute(constrants.sessionTableId);
      try {
            String qry = "UPDATE `tableid` SET `student_id`=?,`to_do_listId`=?,`coursesId`=?,`meetingId`=?,`pollId`=?,"
                    + "`professorId`=?,`teamId`=?,`coffId`=?,`messageId`=?,`taskId`=?,`mentorId`=?,`instituteId`=? WHERE `id`=1";
            Connection con;
              con = DbConnecter.getInstance().getConnection();
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
             preparedStatement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(TableIdDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
              Logger.getLogger(MyServletContextListener.class.getName()).log(Level.SEVERE, null, ex);
          }

   }

}