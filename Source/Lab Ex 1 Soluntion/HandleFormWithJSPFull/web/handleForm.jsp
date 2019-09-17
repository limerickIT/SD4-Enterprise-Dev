<%@page import="beans.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks</title>
    </head>
    <body>
        <%
        
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String options[] = request.getParameterValues("check");
        String comments = request.getParameter("comments"); 
        
        
        
        Customer c = new Customer();
        
        c.setName(name);
        c.setAddress(address);
        c.setCity(city);
        c.setCountry(country);
        c.setEmail(email);
        c.setPhone(phone);
        c.setGender(gender);
        c.setHearOptions(options);
        c.setComments(comments);
        
        
        session.setAttribute("customer", c);
        
        %>
        
        <h4>Thanks <%=name%> for submitting your details</h4>
        <h6>Click <a href="viewAgain.jsp">here</a>  to view your details again</h6>
    </body>
</html>
