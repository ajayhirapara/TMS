/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Dao;

import TMS.Bean.Courses;
import java.util.ArrayList;

/**
 *
 * @author J mala
 */
public interface CoursesDao {
    public boolean Insert(Courses co );
    public boolean Update(Courses co);
    public boolean Delete(Courses co);
    
    public ArrayList<Courses> ActiveCourses(String professor_Id);
    public ArrayList<Courses> FinishCourses(String professor_Id);
    public ArrayList<Courses> ActiveCoursesStudentWise(String StudentId);
    public ArrayList<Courses> FinishCoursesStudentWise(String StudentId);
   public  Courses GetDetailsCourses(String co_Id);
// public ArrayList<Courses> ListOfProfesserWiseCourses(String pro_Id);
    
}
