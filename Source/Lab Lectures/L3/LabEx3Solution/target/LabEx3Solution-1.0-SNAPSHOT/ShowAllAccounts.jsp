<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<LINK REL=STYLESHEET HREF="assets/css/style.css" TYPE="text/css">


<html>
    <head><title>All Accounts</title></head>

    <body>
        <h1>All Accounts</h1>
        <br><br>
        <table width='1000' border='2'>
            <tr>
                <td>Account ID</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Sort Code</td>
                <td>Balance</td>

            </tr>

            <c:forEach items="${list}" var="anAccount">
                <tr>
                    <td><a href="AccountDrillDown?id=${anAccount.accountNumber}">${anAccount.accountNumber}</a></td>
                    <td>${anAccount.firstName}</td>
                    <td>${anAccount.lastName}</td>
                    <td>${anAccount.sortCode}</td>

                    <c:choose> 
                        <c:when test="${anAccount.balance < 0}">
                            <td bgcolor=#FF0000><fmt:formatNumber value="${anAccount.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> 
                            </td>
                        </c:when> 
                        <c:otherwise>
                            <td><fmt:formatNumber value="${anAccount.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> 
                            </td>
                        </c:otherwise>     
                    </c:choose>        
                </tr>
            </c:forEach>  
        </table>


    </body>
</html>
