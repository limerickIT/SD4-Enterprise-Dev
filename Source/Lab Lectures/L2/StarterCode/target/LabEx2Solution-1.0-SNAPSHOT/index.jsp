
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Titles</title>
    </head>
    
    
    
    
    <!-- In this example you need to run the servlet (DisplayAllTitles) first and not the index page -->
    
    
    
    <h3> Number of Titles Returned  ${fn:length(titles)} </h3>

        <c:forEach var="aTitle" items="${titles}">
            ${aTitle.title} <br>
        </c:forEach>
    
    
</html>
