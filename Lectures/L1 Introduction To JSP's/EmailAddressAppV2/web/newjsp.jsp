<%-- 
    Document   : newjsp
    Created on : 02-Oct-2017, 14:48:04
    Author     : Alan.Ryan
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
              //returns the value or  "java" if checked
              //otherwise if returns null
              String languageCheckBox = request.getParameter("language");
              if (languageCheckBox != null) {
              
            %>
        
            <b>You selected Java</b>
            
            <% 
            
            }
            
            %>


            <%                //returns the values of the items selected in a list box
                String[] names = request.getParameterValues("classList");
                for (int i = 0; i < names.length; i++) {


            %>

            <%= names[i]%> <br>

            
            <%  } <%>

            
            <%
               Enumeration e = request.getParameterNames();
                

                %>
            
        
    </body>
</html>
