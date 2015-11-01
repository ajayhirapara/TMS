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
    
    public ArrayList<Courses> ActiveCourses();
    public ArrayList<Courses> FinishCourses();
    public ArrayList<Courses> ListOfProfesserWiseCourses(String pro_Id);
    
}
