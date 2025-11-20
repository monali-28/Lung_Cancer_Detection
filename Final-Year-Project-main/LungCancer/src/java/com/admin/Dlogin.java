/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin;

import com.db.Dbcon;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Dlogin extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
         HttpSession session = request.getSession();
      try {
            
            String username1 = request.getParameter("email");
            String password = request.getParameter("password");
        Statement statement = Dbcon.connect();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM doctor where dmail='" + username1 + "' AND 	dpass='" + password + "';");
            
            if (resultSet.next()) {
                 
                session.setAttribute("did",resultSet.getString("dname"));
//                session.setAttribute("email", email);
                session.setAttribute("UserType", "doctor");
                session.setAttribute("flash_message", "Logged in successfully !!!");
                session.setAttribute("flash_type", "success");
               response.sendRedirect("TrainData.jsp");
              //  response.sendRedirect("user_dashboard.jsp");
            } else {
                session.setAttribute("flash_message", "failed. try again");
                session.setAttribute("flash_type", "fail");

                response.sendRedirect("DoctorLogin.jsp");
            }
        } catch (Exception ex) {
            Logger.getLogger(Admin_Login.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
