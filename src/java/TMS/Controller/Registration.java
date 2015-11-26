/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TMS.Controller;

import TMS.Bean.Mentor;
import TMS.Bean.Professor;
import TMS.Bean.Student;
import TMS.Dao.MentorDao;
import TMS.Dao.ProfessorDao;
import TMS.Dao.StudentDao;
import TMS.DaoImplementation.ObjectFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author J mala
 */
public class Registration extends HttpServlet {

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
        PrintWriter out=response.getWriter();
        String email_Id=request.getParameter("email_Id");
        String full_name=request.getParameter("name");
        String  password=request.getParameter("password");
        String gender=request.getParameter("gender");
        String type=request.getParameter("type");
        String contact=request.getParameter("contact");
        HttpSession session=request.getSession();
        if(type.equals("student")){
            int id=Integer.parseInt(getServletConfig().getInitParameter("studentId"));
            Student s=new Student();
            s.setStudent_Id("Stu_"+id);
            s.setEmail_Id(email_Id);
            s.setStudent_Name(full_name);
            s.setGender(gender);
            s.setContact_No(Long.parseLong(contact));
            s.setStatus(false);
            s.setReg_Date( new java.sql.Date(new  java.util.Date().getTime()));
            s.setLast_Edit_Date(new java.sql.Date(new  java.util.Date().getTime()));
            s.setPhoto_Id("");
            StudentDao stDAO=(StudentDao)ObjectFactory.getInstance(constrants.studentDaoImpl);
            if(stDAO.Insert(s)){
                session.setAttribute("RegistrationMessage", "Registration successfully done. check your email account for Activation.");
                response.sendRedirect("login.jsp");     
            }
        }else if(type.equals("professor")){
            int id=Integer.parseInt(getServletConfig().getInitParameter("professorId"));
            Professor pro=new Professor();
            pro.setProf_Id("Pro_"+id);
            pro.setEmail_Id(email_Id);
            pro.setProf_Name(full_name);
            pro.setGender(gender);
            pro.setContact_No(Long.parseLong(contact));
            pro.setReg_Date(new java.sql.Date(new  java.util.Date().getTime()));
            pro.setLast_Edit_Date(new java.sql.Date(new  java.util.Date().getTime()));
            pro.setStatus(false);
            pro.setPhoto_Id("");
            ProfessorDao professorDao=(ProfessorDao) ObjectFactory.getInstance(constrants.professorDaoImpl);
            professorDao.Insert(pro);
            if(professorDao.Insert(pro)){
                session.setAttribute("RegistrationMessage", "Registration successfully done. check your email account for Activation.");
                response.sendRedirect("login.jsp"); }
        }else if(type.equals("mentor")){
            int id=Integer.parseInt(getServletConfig().getInitParameter("mentorId"));
            Mentor men=new Mentor();
            men.setMentor_Id("Men_"+id);
            men.setMentor_Name(full_name);
            men.setEmail_Id(email_Id);
            men.setGender(gender);
            men.setReg_Date(new java.sql.Date(new  java.util.Date().getTime()));
            men.setLast_Edit_Date(new java.sql.Date(new  java.util.Date().getTime()));
            men.setStatus(false);
            men.setContact_No(Long.parseLong(contact));
            men.setPhoto_Id("");
            MentorDao mentorDao=(MentorDao) ObjectFactory.getInstance(constrants.mentorDaoImpl);
            if(mentorDao.Insert(men)){
                session.setAttribute("RegistrationMessage", "Registration successfully done. check your email account for Activation.");
                response.sendRedirect("login.jsp");
            }
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
