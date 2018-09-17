package SimpleExample;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class FirstServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>First Servlet Example</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("Aren't Servlets Great?");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }//end doGet
}//end class

class C {
    
}