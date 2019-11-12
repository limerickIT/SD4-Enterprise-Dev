<%@page contentType="text/html" pageEncoding="UTF-8"%>
<LINK REL=STYLESHEET HREF="assets/css/style.css" TYPE="text/css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drill Down ${account.accountNumber}</title>
    </head>
    <body>
          <h1>Drill Down on ${account.accountNumber}</h1>
        <table  width='200' >
            <tr><td>Account ID</td><td>${account.accountNumber}</td>  </TR>
            <tr><td>First Name</td><td>${account.firstName}</td>  </TR>
            <tr><td>Last Name</td><td>${account.lastName}</td></TR>
            <tr><td>Sort Code</td><td>${account.sortCode}</td></TR>
            <tr><td>Balance</td><td>${account.balance}</td></TR>
        </table>
        
        <a href="index.jsp">Home</a>
      
    </body>
</html>
