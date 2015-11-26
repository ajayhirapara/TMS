/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Bean.Task;
import TMS.Bean.Task_Allocated_To;
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
 * @author astha
 */
public class TaskDaoImpl implements TMS.Dao.TaskDao {

    private static Connection con;

    TaskDaoImpl() {
        try {
            con = DbConnecter.getInstance().getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public boolean insert(Task task) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "INSERT INTO `task`(`task_id`, `subject`, `deadline_date`, `given_date`, `credit`, `type_task`, `description`,`assigned_by`,`assigned_category`,`venue`,`progress`,`coff_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, PropertiesCache.getTaskId());
            ps.setString(2, task.getSubject());
            ps.setDate(3, task.getDeadline_Date());
            ps.setDate(4, task.getGiven_Date());
            ps.setDouble(5, task.getCredit());
            ps.setString(6, task.getType_Task());
            ps.setString(7, task.getDescription());
            ps.setString(8, task.getAssigned_By());
            ps.setString(9, task.getAssigned_category());
            ps.setString(10, task.getVenue());
            ps.setInt(11, task.getProgress());
            ps.setString(12, task.getCoff_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    @Override
    public boolean Update(Task task) {
        // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "UPDATE `task` SET `task_id`=?,`subject`=?,`deadline_date`=?,`given_date`=?,`credit`=?,`type_task`=?,`description`=?,`assigned_by`=? ,`assigned_category`=?,`venue`=?,`progress`=?,`coff_id`=? WHERE `task_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, task.getTask_Id());
            ps.setString(2, task.getSubject());
            ps.setDate(3, task.getDeadline_Date());
            ps.setDate(4, task.getGiven_Date());
            ps.setDouble(5, task.getCredit());
            ps.setString(6, task.getType_Task());
            ps.setString(7, task.getDescription());
            ps.setString(8, task.getAssigned_By());
            ps.setString(9, task.getAssigned_category());
            ps.setString(10, task.getVenue());
            ps.setInt(11, task.getProgress());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean Delete(Task task) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        String qry = "DELETE FROM `task` WHERE `task_id`=?";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(qry);
            ps.setString(1, task.getTask_Id());
            return ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(CoursesDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public ArrayList<Task> ListOfFinishTaskForStudent(String studentId, String team_Id, String coff_Id) {

        String qry = "SELECT * FROM (SELECT task.* FROM task JOIN task_allocated_to on task.task_id=task_allocated_to.task_id "
                + "WHERE task_allocated_to.task_allocated_id=? AND task_allocated_to.performer_type=1 AND task.coff_id=? "
                + "UNION "
                + "SELECT task.* FROM task JOIN task_allocated_to ON task.task_id=task_allocated_to.task_id "
                + "WHERE task_allocated_to.task_allocated_id=? AND task_allocated_to.performer_type=2 AND task.coff_id=?) "
                + "AS RESULT WHERE RESULT.deadline_date < NOW()";
        Task task = null;
        ArrayList<Task> tasks = new ArrayList<Task>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, studentId);
            preparedStatement.setString(2, coff_Id);
            preparedStatement.setString(3, team_Id);
            preparedStatement.setString(4, coff_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                task = new Task();
                task.setTask_Id(resultSet.getString("task_id"));
                task.setAssigned_By(resultSet.getString("assigned_by"));
                task.setAssigned_category(resultSet.getString("assigned_category"));
                task.setCredit(resultSet.getInt("credit"));
                task.setDeadline_Date(resultSet.getDate("deadline_date"));
                task.setDescription(resultSet.getString("description"));
                task.setGiven_Date(resultSet.getDate("given_date"));
                task.setProgress(resultSet.getInt("progress"));
                task.setSubject(resultSet.getString("subject"));
                task.setType_Task(resultSet.getString("type_task"));
                task.setVenue(resultSet.getString("venue"));
                task.setCoff_Id(resultSet.getString("coff_id"));
                tasks.add(task);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaskDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tasks;
    }

    @Override
    public ArrayList<Task> ListOfFinishTaskToCoursesAssiendByProfessor(String professor_Id, String coff_Id) {

        String qry = "SELECT * FROM task WHERE task.assigned_by=? AND task.coff_id=? AND task.assigned_category=2 AND task.deadline_date < NOW()";
        Task task = null;
        ArrayList<Task> tasks = new ArrayList<Task>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, professor_Id);
            preparedStatement.setString(2, coff_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                task = new Task();
                task.setTask_Id(resultSet.getString("task_id"));
                task.setAssigned_By(resultSet.getString("assigned_by"));
                task.setAssigned_category(resultSet.getString("assigned_category"));
                task.setCredit(resultSet.getInt("credit"));
                task.setDeadline_Date(resultSet.getDate("deadline_date"));
                task.setDescription(resultSet.getString("description"));
                task.setGiven_Date(resultSet.getDate("given_date"));
                task.setProgress(resultSet.getInt("progress"));
                task.setSubject(resultSet.getString("subject"));
                task.setType_Task(resultSet.getString("type_task"));
                task.setVenue(resultSet.getString("venue"));
                task.setCoff_Id(resultSet.getString("coff_id"));
                task.setTask_Allocated_Tos(Task_Allocated_Tos(resultSet.getString("task_id")));
                tasks.add(task);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaskDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tasks;
    }

    @Override
    public ArrayList<Task> ListOfWorkingTaskForStudent(String studentId, String team_Id, String coff_Id) {

        String qry = "SELECT * FROM (SELECT task.* FROM task JOIN task_allocated_to on task.task_id=task_allocated_to.task_id "
                + "WHERE task_allocated_to.task_allocated_id=? AND task_allocated_to.performer_type=1 AND task.coff_id=? "
                + "UNION "
                + "SELECT task.* FROM task JOIN task_allocated_to ON task.task_id=task_allocated_to.task_id "
                + "WHERE task_allocated_to.task_allocated_id=? AND task_allocated_to.performer_type=2 AND task.coff_id=?) "
                + "AS RESULT WHERE RESULT.deadline_date > NOW()";
        Task task = null;
        ArrayList<Task> tasks = new ArrayList<Task>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, studentId);
            preparedStatement.setString(2, coff_Id);
            preparedStatement.setString(3, team_Id);
            preparedStatement.setString(4, coff_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                task = new Task();
                task.setTask_Id(resultSet.getString("task_id"));
                task.setAssigned_By(resultSet.getString("assigned_by"));
                task.setAssigned_category(resultSet.getString("assigned_category"));
                task.setCredit(resultSet.getInt("credit"));
                task.setDeadline_Date(resultSet.getDate("deadline_date"));
                task.setDescription(resultSet.getString("description"));
                task.setGiven_Date(resultSet.getDate("given_date"));
                task.setProgress(resultSet.getInt("progress"));
                task.setSubject(resultSet.getString("subject"));
                task.setType_Task(resultSet.getString("type_task"));
                task.setVenue(resultSet.getString("venue"));
                task.setCoff_Id(resultSet.getString("coff_id"));
                task.setTask_Allocated_Tos(Task_Allocated_Tos(resultSet.getString("task_id")));
                tasks.add(task);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaskDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tasks;
    }

    @Override
    public ArrayList<Task> ListOfWorkingTaskToCoursesAssiendByProfessor(String professor_Id, String coff_Id) {

        String qry = "SELECT * FROM task WHERE task.assigned_by=? AND task.coff_id=? AND task.assigned_category=2 AND task.deadline_date > NOW()";
        Task task = null;
        ArrayList<Task> tasks = new ArrayList<Task>();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, professor_Id);
            preparedStatement.setString(2, coff_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                task = new Task();
                task.setTask_Id(resultSet.getString("task_id"));
                task.setAssigned_By(resultSet.getString("assigned_by"));
                task.setAssigned_category(resultSet.getString("assigned_category"));
                task.setCredit(resultSet.getInt("credit"));
                task.setDeadline_Date(resultSet.getDate("deadline_date"));
                task.setDescription(resultSet.getString("description"));
                task.setGiven_Date(resultSet.getDate("given_date"));
                task.setProgress(resultSet.getInt("progress"));
                task.setSubject(resultSet.getString("subject"));
                task.setType_Task(resultSet.getString("type_task"));
                task.setVenue(resultSet.getString("venue"));
                task.setCoff_Id(resultSet.getString("coff_id"));
                task.setTask_Allocated_Tos(Task_Allocated_Tos(resultSet.getString("task_id")));
                tasks.add(task);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaskDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tasks;
    }

    @Override
    public ArrayList<Task_Allocated_To> Task_Allocated_Tos(String task_Id) {
        ArrayList<Task_Allocated_To> task_Allocated_Tos = new ArrayList<Task_Allocated_To>();
        try {
            String qry = "SELECT task_allocated_to.*,student.student_name FROM task_allocated_to JOIN student ON task_allocated_to.task_allocated_id=student.student_id "
                    + "WHERE task_allocated_to.task_id=?";
            Task_Allocated_To task_Allocated_To = null;
            PreparedStatement preparedStatement = con.prepareStatement(qry);
            preparedStatement.setString(1, task_Id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                task_Allocated_To = new Task_Allocated_To();
                task_Allocated_To.setStudent_Id(resultSet.getString("student_id"));
                task_Allocated_To.setStudent_Name(resultSet.getString("student_name"));
                task_Allocated_To.setSubmission_Date(resultSet.getDate("submission _date"));
                task_Allocated_To.setPerformer_Type(resultSet.getInt("performer_type"));
                task_Allocated_To.setFeedback(resultSet.getString("feedback"));
                task_Allocated_To.setEvaluation_Date(resultSet.getDate("evaluation_date"));
                task_Allocated_To.setEarned_Credit(resultSet.getInt("earned_credit"));
                task_Allocated_To.setDoc_Path(resultSet.getString("doc_path"));
                task_Allocated_To.setDescription(resultSet.getString("description"));
                task_Allocated_Tos.add(task_Allocated_To);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaskDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return task_Allocated_Tos;
    }

}
