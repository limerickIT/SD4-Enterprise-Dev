package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import business.User;
import data.UserIO;

public final class display_005femail_005fentry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"ageError.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Email Address App</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        String ageInput = request.getParameter("age");
        
        int age = Integer.parseInt(ageInput);
        
        ServletContext sc = this.getServletContext();
        
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        
        User user = new User(firstName, lastName, emailAddress,age);
        
        UserIO.add(user, path);
        
        
      out.write("\n");
      out.write("       \n");
      out.write("        <h1> Thanks for joining our email list </h1>\n");
      out.write("        \n");
      out.write("        <p> Here is the information you entered: </p>\n");
      out.write("\n");
      out.write("        <table cellspacing=\"5\" cellpadding=\"5\" border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"right\"> First name: </td>\n");
      out.write("                <td>");
      out.print( user.getFirstName());
      out.write(" </td>\n");
      out.write("            </tr>         \n");
      out.write("            <tr>\n");
      out.write("                <td align=\"right\"> Last name: </td>\n");
      out.write("                <td>");
      out.print( user.getLastName());
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td align=\"right\"> Email address: </td>\n");
      out.write("                <td>");
      out.print( user.getEmailAddress() );
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td align=\"right\"> Age:</td>\n");
      out.write("                <td>");
      out.print( user.getAge() );
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("        <p>To enter another email address, click on the Back <br>\n");
      out.write("           button in your browser or the Return button shown <br>\n");
      out.write("           below. </p>\n");
      out.write("            \n");
      out.write("        <form action=\"join_email_list.html\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Return\">\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
