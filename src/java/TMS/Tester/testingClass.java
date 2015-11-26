/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Tester;

import TMS.Bean.Courses;
import TMS.Bean.Professor;
import TMS.Bean.Student;
import TMS.Controller.constrants;
import TMS.Dao.CoursesDao;
import TMS.Dao.StudentDao;
import TMS.DaoImplementation.CoursesDaoImpl;
import TMS.DaoImplementation.ObjectFactory;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author J mala
 */
public class testingClass {
    public static void main(String[] args) {
//        Student s=new Student();
//        s.setStudent_Id("st_3");
//        s.setStudent_Name("chintan");
//        s.setEmail_Id("abc1@gmail.com");
//        s.setContact_No(9662721629l);
//        s.setGender("Male");
//        s.setReg_Date(new Date(new java.util.Date().getTime()));
//        s.setLast_Edit_Date(new Date(new java.util.Date().getTime()));
//        s.setPhoto_Id("demo.jsp");
//        s.setStatus(true);
//        StudentDao studentDao=(StudentDao) ObjectFactory.getInstance(constrants.studentDaoImpl);
//        studentDao.Insert(s);
//        
        
       CoursesDao coursesDao = (CoursesDao) ObjectFactory.getInstance(constrants.coursesDaoImpl);
        ArrayList<Courses> courses=coursesDao.ActiveCourses("pro1");
        for(Courses c:courses){
            System.out.println(c.getCourse_name());
        }
                
    }
}
