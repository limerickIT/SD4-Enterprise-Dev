package SessionsExample;

import java.io.*;
import java.net.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SessionServlet1 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String usersName = request.getParameter( "NameField" );
            HttpSession session = request.getSession( true );
            session.setAttribute( "theUsersName", usersName );

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Using Sessions</title>");
            out.println("</head>");

            out.println("<body>");
            out.println("Hello " + session.getAttribute("theUsersName"));
            out.println("<br>");
            out.println("<a href=SessionServlet2>here</a>" );
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
    }


}
