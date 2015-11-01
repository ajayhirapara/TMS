/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import java.util.ArrayList;
import TMS.Bean.Team;
/**
 *
 * @author J mala
 */
public interface TeamDAO {
    public boolean Insert(Team team);
    public boolean Update(Team team);
    public boolean Delete(Team team);
    public Team ListOfTeamWiseStudent(String student_Id,String CoursesId);
    public ArrayList<Team> ListOfTeamOfCourseWiseProfessor(String professor_Id,String Courses_Id);
    
}
