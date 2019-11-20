/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.User;

/**
 *
 * @author Alan.Ryan
 */
public class DeliverSpreadsheet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try {
            User u1 = new User("Alan", "Ryan", "alan.ryan@lit.ie");
            User u2 = new User("Brendan", "Watson", "brendan.watson@lit.ie");
            User u3 = new User("Gerry", "Guinane","Gerry.Guinane@lit.ie" );
            User u4 = new User("Mike", "Winterburn","Mike.Winterburn@lit.ie" );
            User u5 = new User("Pat", "Donohue","Pat.Donohue@lit.ie" );
            
            ArrayList<User> list = new ArrayList();
            
            list.add(u1); list.add(u2); list.add(u3); list.add(u4); list.add(u5);
            
            String report = "The user table\n\n" +
                            "First Name\t" +
                            "Last Name\t" +
                            "Email Address\n";
            
            for (User aUser : list) {
                report += aUser.getFirstName() + "\t" + aUser.getLastName() + "\t" + aUser.getEmailAddress() + "\n";
            }
            
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("cache-control", "no-cache");
            out.println(report);
                    
            
            
            
            
            
            
        } finally {
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
