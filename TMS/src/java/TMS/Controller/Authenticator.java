/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Controller;

import TMS.Bean.Courses;
import TMS.Bean.Login;
import TMS.Bean.Professor;
import TMS.Bean.Student;
import TMS.Bean.To_Do_List;
import TMS.Dao.CoursesDao;
import TMS.Dao.LoginDAO;
import TMS.Dao.ProfessorDao;
import TMS.Dao.StudentDao;
import TMS.Dao.To_Do_ListDao;
import TMS.DaoImplementation.LoginDaoImpl;
import TMS.DaoImplementation.ObjectFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author J mala
 */
public class Authenticator extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        Login l1 = new Login();
        l1.setEmail_Id(userName);
        l1.setPassword(password);
        LoginDAO loDao = (LoginDAO) ObjectFactory.getInstance(constrants.logindaoImp);
        HttpSession session = request.getSession();
        Login login = loDao.Authentication(l1);
        if (login.getEmail_Id().equals(l1.getEmail_Id()) && login.getPassword().equals(l1.getPassword())) {
            if (login.getType() == 1) {
                session.setAttribute("Email_id", l1.getEmail_Id());
                ProfessorDao professorDao = (ProfessorDao) ObjectFactory.getInstance(constrants.professorDaoImpl);
                Professor professor = professorDao.findByEmailId(l1.getEmail_Id());
                To_Do_ListDao to_Do_ListDao = (To_Do_ListDao) ObjectFactory.getInstance(constrants.to_Do_ListDaoImpl);
                ArrayList<To_Do_List> to_Do_Lists = to_Do_ListDao.To_Do_List_OF_type(professor.getProf_Id());
                session.setAttribute(constrants.sessionProfessor, professor);
                session.setAttribute("to_Do_Lists", to_Do_Lists);
                CoursesDao coursesDao = (CoursesDao) ObjectFactory.getInstance(constrants.coursesDaoImpl);
                session.setAttribute(constrants.sessionWorkingCoursesProfessor, coursesDao.ActiveCourses(professor.getProf_Id()));
                session.setAttribute(constrants.sessionFinishCoursesProfessor, coursesDao.FinishCourses(professor.getProf_Id()));
                System.out.println("Professor Login Success ::" + l1.getEmail_Id());
                response.sendRedirect("Professor/index.jsp");
            } else if (login.getType() == 2) {
                session.setAttribute("Email_id", l1.getEmail_Id());
                StudentDao studentDao = (StudentDao) ObjectFactory.getInstance(constrants.studentDaoImpl);
                Student student = studentDao.FinndByEmailId(l1.getEmail_Id());
                To_Do_ListDao to_Do_ListDao = (To_Do_ListDao) ObjectFactory.getInstance(constrants.to_Do_ListDaoImpl);
                ArrayList<To_Do_List> to_Do_Lists = to_Do_ListDao.To_Do_List_OF_type(student.getStudent_Id());
                session.setAttribute("student", student);
                session.setAttribute("to_Do_Lists", to_Do_Lists);
                System.out.println("Professor Login Success ::" + l1.getEmail_Id());
                response.sendRedirect("Student/index.jsp");
            }
        } else {
            response.sendRedirect("login.jsp");
            out.println("invalide");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
