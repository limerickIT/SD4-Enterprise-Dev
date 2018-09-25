<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Confirmed</title>
    </head>
    <body>
        
        <b><p>Name:</b>    ${customer.name}</p>
        <b><p>Address:</b> ${sessionScope.customer.address} </p>
        <b><p>City:</b>    ${sessionScope.customer.city} </p>
        <b><p>Country:</b> ${sessionScope.customer.country} </p>
        <b><p>Phone:</b>   ${sessionScope.customer.phone}</p>
        <b><p>Email:</b>   ${sessionScope.customer.email}/p>
        <b><p>Gender:</b>  ${sessionScope.customer.gender}</p>
        <b><p>How did you hear about us?</b> ${sessionScope.customer.hearOptions} </p>
        <b><p>Comments: ${sessionScope.customer.comments}</p>
        
        <form id = "revisit" name="revisit" method="post" action="index.jsp">
            
            <input type="submit" name="submit" id="submit" value="Edit Details" />
        </form>
        
        <form id = "save" name="save" method="post" action="HandleWriteToFile">
            
            <input type="submit" name="submit" id="submit" value="Save Details" />
        </form>
    </body>
</html>
