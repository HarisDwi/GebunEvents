/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author haris.dwi
 */
@WebServlet(name = "ValidationServlet", urlPatterns = {"/ValidationServlet"})
public class ValidationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        String db_user = "root";
        String db_pass = "632146rockyou";
        String db_url = "jdbc:mysql://localhost/lawui-haris";
        Class.forName("com.mysql.jdbc.Driver");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
        Statement statement = connection.createStatement();
        String query = "SELECT role FROM gebun_users WHERE username='" + username 
                + "' AND password='" + password +"'";
        ResultSet resultSet = statement.executeQuery(query);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int role = 0;
            if(!resultSet.isBeforeFirst()){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Login Error</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("Error in credentials, please return and try again.<br>");
                out.println("<a href=\"index.jsp\">Go back</a>");
                out.println("</body>");
                out.println("</html>");
            }
            else{
                resultSet.next();
                role = resultSet.getInt(1);
            }
            if(role == 1){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Login Success</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<META HTTP-EQUIV=\"Refresh\" CONTENT=\"0;URL=userhome.jsp\">");
                out.println("</body>");
                out.println("</html>");
            }
            else if(role == 2){
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Login Success</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<META HTTP-EQUIV=\"Refresh\" CONTENT=\"0;URL=adminhome.jsp\">");
                out.println("</body>");
                out.println("</html>");
            }
        } finally {
            connection.close();
            statement.close();
            out.close();
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ValidationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ValidationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ValidationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ValidationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
