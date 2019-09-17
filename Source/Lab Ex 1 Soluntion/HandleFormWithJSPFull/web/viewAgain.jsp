<%@page import="beans.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Confirmed</title>
    </head>
    <body>
        <% Customer c = (Customer) session.getAttribute("customer"); %>
        
        <b><p>Name:</b>    <%=c.getName()%></p>
        <b><p>Address:</b> <%=c.getAddress()%> </p>
        <b><p>City:</b>    <%=c.getCity()%> </p>
        <b><p>Country:</b> <%=c.getCountry()%> </p>
        <b><p>Phone:</b>   <%=c.getPhone()%> </p>
        <b><p>Email:</b>   <%=c.getEmail()%> </p>
        <b><p>Gender:</b>   <%=c.getGender()%> </p>
        <b><p>Address:</b> <%=c.getAddress()%> </p>
        <b><p>How did you hear about us?</b> <%=c.getHearOptionsAsString()%> </p>
        <b><p>Comments:</b><%=c.getComments()%> </p>
        
        <form id = "revisit" name="revisit" method="post" action="index.jsp">
            
            <input type="submit" name="submit" id="submit" value="Edit Details" />
        </form>
        
        <form id = "save" name="save" method="post" action="thanks.jsp">
            
            <input type="submit" name="submit" id="submit" value="Save Details" />
        </form>
    </body>
</html>
