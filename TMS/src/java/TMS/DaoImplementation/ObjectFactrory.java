/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.DaoImplementation;

import TMS.Controller.constrants;

/**
 *
 * @author J mala
 */
public class ObjectFactrory {
  public static Object getInstance(String val) {
        Object obj = null;
        switch (val) {
            case constrants.logindaoImp:
                 obj=loginDaoImpl;
                 return obj;
            case constrants.studentDaoImpl:
                obj=studentDaoImpl;
                return obj;
            case constrants.professorDaoImpl:
                obj=professorDaoImpl;
                return obj;
            case constrants.mentorDaoImpl:
                obj=mentorDaoImpl;
                return obj;
            default:
                return obj;
        }
     
  }
  private static LoginDaoImpl loginDaoImpl=new LoginDaoImpl();
  private static ProfessorDaoImpl professorDaoImpl=new ProfessorDaoImpl();
  private static StudentDaoImpl studentDaoImpl=new StudentDaoImpl();
  private static MentorDaoImpl mentorDaoImpl=new MentorDaoImpl();
}
