package servlets;

import classes.Account;
import classes.AccountDB;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alan.Ryan
 */
public class ShowBalance extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String address;
            
        try {
            AccountDB.connectToDB();
            Account customer = AccountDB.getAccountByID(Integer.parseInt(request.getParameter("id")));
            
            if (customer == null) {
                address = "/UnknownCustomer.jsp";
            } else if (customer.getBalance() < 0) {
                address = "/NegativeBalance.jsp";
                request.setAttribute("badCustomer", customer);
            } else if (customer.getBalance() < 10000) {
                address = "/NormalBalance.jsp";
                request.setAttribute("regularCustomer", customer);
            } else {
                address = "/HighBalance.jsp";
                request.setAttribute("eliteCustomer", customer);
            }
        
        }//end try
        
        catch(NumberFormatException ex) {
             address = "/Error.jsp";
        }//end catch
       
        AccountDB.disconnectFromDB();
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }//end processRequest()

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

}//end class