package UsingGET;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UsingGetMethod extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name = request.getParameter( "nameField" );
        String yob = request.getParameter( "yobField" );

        int year = Integer.parseInt(yob);
        int age = 2008 - year;

        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Using Get</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("Hello " + name + ", welcome to servlets!");
            out.println("<br>");
            out.println("You are " + age + " years old");
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }

    }


}
