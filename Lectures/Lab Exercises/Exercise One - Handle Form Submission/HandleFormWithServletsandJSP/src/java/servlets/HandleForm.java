/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Customer;
import data.CustomerIO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alan.Ryan
 */
@WebServlet(name = "HandleForm", urlPatterns = {"/HandleForm"})
public class HandleForm extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            
            HttpSession session = request.getSession(true);
            
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String country = request.getParameter("country");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String options[] = request.getParameterValues("check");
            String comments = request.getParameter("comments");

            Customer c = new Customer();

            c.setName(name);
            c.setAddress(address);
            c.setCity(city);
            c.setCountry(country);
            c.setEmail(email);
            c.setPhone(phone);
            c.setGender(gender);
            c.setHearOptions(options);
            c.setComments(comments);

            session.setAttribute("customer", c);

            RequestDispatcher dispatcher = request.getRequestDispatcher("viewAgain.jsp");
            dispatcher.forward(request, response);

        }
        catch (Exception ex) {
            System.out.println("ERROR " + ex);
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    
}
