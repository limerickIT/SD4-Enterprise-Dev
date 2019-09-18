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
        
        <p><b>Name:</b>    <%=c.getName()%></p>
        <p><b>Address:</b> <%=c.getAddress()%> </p>
        <p><b>City:</b>    <%=c.getCity()%> </p>
        <p><b>Country:</b> <%=c.getCountry()%> </p>
        <p><b>Phone:</b>   <%=c.getPhone()%> </p>
        <p><b>Email:</b>   <%=c.getEmail()%> </p>
        <p><b>Gender:</b>   <%=c.getGender()%> </p>
        <p><b>Address:</b> <%=c.getAddress()%> </p>
        <p><b>How did you hear about us?</b> <%=c.getHearOptionsAsString()%> </p>
        <p><b>Comments:</b><%=c.getComments()%> </p>
        
        <form id = "revisit" name="revisit" method="post" action="index.jsp">
            
            <input type="submit" name="submit" id="submit" value="Edit Details" />
        </form>
        
        <form id = "save" name="save" method="post" action="thanks.jsp">
            
            <input type="submit" name="submit" id="submit" value="Save Details" />
        </form>
    </body>
</html>
