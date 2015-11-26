/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;
import TMS.Bean.Task;
import TMS.Bean.Task_Allocated_To;
import java.util.ArrayList;
/**
 *
 * @author J mala
 */
public interface TaskDao {
    public boolean insert(Task task);
    public boolean Update(Task task);
    public boolean Delete(Task task);
    public ArrayList<Task_Allocated_To> Task_Allocated_Tos(String task_Id);
    public ArrayList<Task> ListOfFinishTaskForStudent(String studentId,String team_Id,String coff_Id);
    public ArrayList<Task> ListOfFinishTaskToCoursesAssiendByProfessor(String professor_Id,String coff_Id);
    public ArrayList<Task> ListOfWorkingTaskForStudent(String studentId,String team_Id,String coff_Id);
    public ArrayList<Task> ListOfWorkingTaskToCoursesAssiendByProfessor(String professor_Id,String coff_Id);
    
}
