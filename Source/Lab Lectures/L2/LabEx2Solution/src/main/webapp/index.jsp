
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Titles</title>
    </head>
    
    
    
    
    <!-- In this example you need to run the servlet (DisplayAllTitles) first and not the index page -->
    
    
    
    <h3> Number of Titles Returned  ${fn:length(titles)} </h3>

     <table width='1200' border='1'>
            <tr>
                <td>ISBN</td>
                <td>Title</td>
                <td>Edition Number</td>
                <td>Year Published</td>
		<td>Publisher ID</td>
                <td>Price</td>
            </tr>

        <c:forEach var="aTitle" items="${titles}">
            <tr> 
                <td>${aTitle.ISBN} </td>
                <td>${aTitle.title} </td>
                <td>${aTitle.editionNumber} </td>
                
                <c:choose> 
                        <c:when test="${aTitle.yearPublished == 2019}">
                            <td bgcolor=#FF0000>${aTitle.yearPublished} </td>
                        </c:when> 
                        <c:otherwise>
                            <td>${aTitle.yearPublished} </td>
                        </c:otherwise>     
                    </c:choose>       
                
                
                <td>${aTitle.publisherID} </td>
                <td><fmt:formatNumber value="${aTitle.price}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> </td>
            </tr>
        </c:forEach>
     </table>
    
</html>
