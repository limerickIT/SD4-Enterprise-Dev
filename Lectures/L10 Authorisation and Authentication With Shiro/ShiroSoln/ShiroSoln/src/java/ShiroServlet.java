/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

/**
 *
 * @author Alan.Ryan
 */
@WebServlet(urlPatterns = {"/ShiroServlet"})
public class ShiroServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

            Subject currentUser = SecurityUtils.getSubject();
            
            if (currentUser.hasRole("lecturer")) {
                log(currentUser.getPrincipal().toString() + " is a lecturer");
            }
            
            if (currentUser.hasRole("lecturer") && currentUser.hasRole("statistician") ) {
                log(currentUser.getPrincipal().toString() + " is a lecturer and a statistician");
            }

            List<String> roles = new ArrayList();
            roles.add("lecturer");
            roles.add("statistician");
            roles.add("admin");
            
            boolean flags[] = currentUser.hasRoles(roles);
            for (int i = 0; i < flags.length; i++) {
                log(currentUser.getPrincipal().toString() + " is a " + roles.get(i) + "? " + flags[i]);
            }
            
            if(currentUser.isPermitted("academic_content"))
                 log(currentUser.getPrincipal().toString() + " can access academic content");
            
            if(currentUser.isPermitted("stats_stuff"))
                 log(currentUser.getPrincipal().toString() + " can access stats content");
            
     
            
            
//            String nextPage;
//            try {
//                String username = request.getParameter("username");
//                String password = request.getParameter("password");
//
//                UsernamePasswordToken token = 
//                        new UsernamePasswordToken(username, password);
//                token.setRememberMe(true);
//
//                Subject currentUser = SecurityUtils.getSubject();
//                currentUser.login(token);
//                
//                currentUser.
//                
//                log("Principal " + currentUser.getPrincipal() + " logged in");
//
//                nextPage = "admin/index.jsp";
//               
//            } catch (UnknownAccountException uae) {
//                log("Unknown Account " + uae);
//                nextPage = "error.jsp";
//            } catch (IncorrectCredentialsException ice) {
//                log("Incorrect Credentials " + ice);
//                nextPage = "error.jsp";
//            } catch (LockedAccountException lae) {
//                log("Locked Account " + lae);
//                nextPage = "error.jsp";
//            } catch (ExcessiveAttemptsException eae) {
//                log("Excessive Attempts " + eae);
//                nextPage = "error.jsp";
//            } catch (AuthenticationException ae) {
//                log("Authentication Error " + ae);
//                nextPage = "error.jsp";
//            } catch (UnavailableSecurityManagerException usme) {
//                log("Unavailable Security Manager " + usme);
//                nextPage = "error.jsp";
//            }
//
//        RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
//        dispatcher.forward(request, response);

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
