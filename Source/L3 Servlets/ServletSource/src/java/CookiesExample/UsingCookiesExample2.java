/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package CookiesExample;

import java.io.*;
import java.net.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UsingCookiesExample2 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            Cookie cookies[];
            cookies = request.getCookies(); // get client's cookies

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SessionServlet2</title>");
            out.println("</head>");
            out.println("<body>");
            for ( int i = 0; i < cookies.length; i++ )
                out.println("Hello " + cookies[ i ].getValue());
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
    }


}
