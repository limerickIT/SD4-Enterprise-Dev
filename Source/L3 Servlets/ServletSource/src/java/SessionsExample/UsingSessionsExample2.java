package SessionsExample;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UsingSessionsExample2 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession(  );
            Object theName = session.getAttribute("theUsersName");

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SessionServlet2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("Hello " + theName);
            out.println("</body>");
            out.println("</html>");

        } finally {
            out.close();
        }
    }

}
