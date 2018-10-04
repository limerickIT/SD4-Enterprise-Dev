<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL=STYLESHEET HREF="css/style.css" TYPE="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="getAccountByID" action="ShowBalance">
            
            Enter Account ID <input type="text" name="id" value="" /> <input type="submit" value="Get Account" name="btn1" />
        </form>
         <form name="getAllAccounts" action="ShowAllAccounts">
             <br><br> 
           <input type="submit" value="Get All Accounts" name="btn2" />
           <br>
        </form>
    </body>
</html>
