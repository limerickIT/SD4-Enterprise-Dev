<%@include file="/includes/header.jsp" %> <!-- an include directive !-->
<%@page import="business.User" %>
<% User u = (User) request.getAttribute("user");%>

<table cellspacing="5" cellpadding="5" border="1">
    <tr>
        <td align="right"> First name: </td>
        <td><%= u.getFirstName()%> </td>
    </tr>         
    <tr>
        <td align="right"> Last name: </td>
        <td><%= u.getLastName()%> </td>
    </tr>

    <tr>
        <td align="right"> Email address: </td>
        <td><%= u.getEmailAddress()%> </td>
    </tr>
</table>
<p>To enter another email address, click on the Back <br>
    button in your browser or the Return button shown <br>
    below. </p>

<form action="join_email_list.html" method="post">
    <input type="submit" value="Return">
</form>
<jsp:include page="/includes/footer.jsp"/> <!-- an include action !-->

