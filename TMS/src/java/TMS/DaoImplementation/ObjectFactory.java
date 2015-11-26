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
public class ObjectFactory {

    public static Object getInstance(String val) {
        Object obj = null;
        switch (val) {
            case constrants.logindaoImp:
                obj = loginDaoImpl;
                return obj;
            case constrants.studentDaoImpl:
                obj = studentDaoImpl;
                return obj;
            case constrants.coursesDaoImpl:
                obj=coursesDaoImpl;
                return obj;
            case constrants.professorDaoImpl:
                obj = professorDaoImpl;
                return obj;
            case constrants.mentorDaoImpl:
                obj = mentorDaoImpl;
                return obj;
            case constrants.to_Do_ListDaoImpl:
                obj = to_Do_ListDaoImpl;
                return obj;
            case constrants.messageDaoImpl:
                obj = messageDaoImpl;
                return obj;
            case constrants.taskDaoImpl:
                obj = taskDaoImpl;
                return obj;
            case constrants.teamDaoImpl:
                obj = teamDaoImpl;
                return obj;
            case constrants.meetingDaoImpl:
                obj=meetingDaoImpl;
                return obj;
            case constrants.tableIdDaoImpl:
                obj=tableIdDaoImpl;
                return obj;
            default:
                return obj;
        }

    }
    private static LoginDaoImpl loginDaoImpl = new LoginDaoImpl();
    private static ProfessorDaoImpl professorDaoImpl = new ProfessorDaoImpl();
    private static StudentDaoImpl studentDaoImpl = new StudentDaoImpl();
    private static MentorDaoImpl mentorDaoImpl = new MentorDaoImpl();
    private static To_Do_ListDaoImpl to_Do_ListDaoImpl = new To_Do_ListDaoImpl();
    private static CoursesDaoImpl coursesDaoImpl = new CoursesDaoImpl();
    private static MessageDaoImpl messageDaoImpl = new MessageDaoImpl();
    private static TaskDaoImpl taskDaoImpl = new TaskDaoImpl();
    private static TeamDaoImpl teamDaoImpl = new TeamDaoImpl();
    private static MeetingDaoImpl meetingDaoImpl=new MeetingDaoImpl();
    private static TableIdDaoImpl tableIdDaoImpl=new TableIdDaoImpl();
}
