<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<LINK REL=STYLESHEET HREF="resources/css/style.css" TYPE="text/css">

<html>
    <head><title>All Routes</title></head>

    <body>
        <h1>Routes Found: ${fn:length(list)} </h1>
        <br><br>
        <table width='1000' border='1'>
            <tr>
                <th>City</th>
                <th>Airport</th>
                <th>Code</th>
                <th>Q1</th>
                <th>Q2</th>
                <th>Q3</th>
                <th>Q4</th>
                <th>Flag</th>
                <th>Actions</th>
            </tr>

            <c:forEach items="${list}" var="p" varStatus="status">
                <c:choose>
                    <c:when test="${status.first or status.last}"  > 
                        <tr bgcolor="#DCDCDC"> 
                    </c:when>
                    <c:otherwise>
                        <tr>
                    </c:otherwise>
                </c:choose>
                    <td>${p.city}</td>
                    <td>${p.airport}</td>
                    <td>${p.code}</td>
                    <td>${p.q1}</td>
                    <td>${p.q2}</td>
                    <td>${p.q3}</td>
                    <td>${p.q4}</td>
                    <td><img src='resources/flags/${p.code}.png' width="40" height="40"/></td>
                    <td><a href="SelectRoute?code=${p.code}">Edit</a> </td>
                </tr>

            </c:forEach>  
        </table>
    </body>
</html>
