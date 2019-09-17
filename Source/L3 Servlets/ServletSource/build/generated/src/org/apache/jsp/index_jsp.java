package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Please Send Us Your Details</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <h1>Join our email list</h1>\n");
      out.write("  <p>To join our email list, enter your name and\n");
      out.write("     email address below. <br>\n");
      out.write("     Then, click on the Submit button.</p>\n");
      out.write("\n");
      out.write("  <form action=\"DisplayEmailEntryWithServlet\">\n");
      out.write("  <table cellspacing=\"5\" border=\"0\">\n");
      out.write("    <tr>\n");
      out.write("      <td align=\"right\">First name:</td>\n");
      out.write("      <td><input type=\"text\" name=\"firstName\"></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td align=\"right\">Last name:</td>\n");
      out.write("      <td><input type=\"text\" name=\"lastName\"></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td align=\"right\">Email address:</td>\n");
      out.write("      <td><input type=\"text\" name=\"emailAddress\"></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td></td>\n");
      out.write("      <td><br><input type=\"submit\" value=\"Submit\"></td>\n");
      out.write("    </tr>\n");
      out.write("  </table>\n");
      out.write("  </form>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
