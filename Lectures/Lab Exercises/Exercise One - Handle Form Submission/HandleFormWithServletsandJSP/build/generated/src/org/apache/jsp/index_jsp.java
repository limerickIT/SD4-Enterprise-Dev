package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.Customer;

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

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Please Send Us Your Details</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<form id=\"detailsForm\" name=\"detailsForm\" method=\"post\" action=\"HandleForm\">\n");
      out.write("  <h2>Please Send Us Your Details.</h2>\n");
      out.write("  <table width=\"730\" border=\"0\">\n");
      out.write("    <tr>\n");
      out.write("      <td width=\"266\">Name</td>\n");
      out.write("      <td width=\"454\"><input name=\"name\" type=\"text\" id=\"name\" size=\"50\" value=\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td height=\"31\">Address</td>\n");
      out.write("      <td><input name=\"address\" type=\"text\" id=\"address\" size=\"50\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>City</td>\n");
      out.write("      <td><input type=\"text\" name=\"city\" id=\"city\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.city}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("     <tr>\n");
      out.write("      <td>Country</td>\n");
      out.write("      <td><input type=\"text\" name=\"country\" id=\"country\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.country}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>Phone</td>\n");
      out.write("      <td><input type=\"text\" name=\"phone\" id=\"phone\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>Email</td>\n");
      out.write("      <td><input type=\"text\" name=\"email\" id=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>Gender</td>\n");
      out.write("      <td><p>\n");
      out.write("        <label>\n");
      out.write("          <input type=\"radio\" name=\"gender\" value=\"male\" id=\"gender\"  />\n");
      out.write("          Male</label>\n");
      out.write("       \n");
      out.write("        <label>\n");
      out.write("          <input type=\"radio\" name=\"gender\" value=\"female\" id=\"gender\" />\n");
      out.write("          Female</label>\n");
      out.write(" \n");
      out.write("      </p></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>How Did You Hear About Us?</td>\n");
      out.write("      <td>Twitter<input name=\"check\" type=\"checkbox\" id=\"check\" value=\"twitter\" />\n");
      out.write("      Facebook<input name=\"check\" type=\"checkbox\" id=\"check\" value=\"facebook\" />\n");
      out.write("      Newspaper<input name=\"check\" type=\"checkbox\" id=\"check\" value=\"newspaper\" />\n");
      out.write("      Radio<input name=\"check\" type=\"checkbox\" id=\"radio\" value=\"radio\" />\n");
      out.write("      Other<input name=\"check\" type=\"checkbox\" id=\"check\" value=\"other\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td>Comments</td>\n");
      out.write("      <td><label for=\"comments\"></label>\n");
      out.write("          <textarea name=\"comments\" id=\"comments\" cols=\"45\" rows=\"5\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.customer.comments}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </textarea></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("      <td><input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Submit\" /></td>\n");
      out.write("      <td><input type=\"reset\" name=\"clear\" id=\"clear\" value=\"Clear\" /></td>\n");
      out.write("    </tr>\n");
      out.write("  </table>\n");
      out.write("</form>\n");
      out.write("</body>\n");
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
