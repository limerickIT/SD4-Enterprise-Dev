<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head><title>All Routes</title></head>
    <body>
        <h1>Routes Found: ??? </h1>
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
            <tr>    
                <td>city</td>
                <td>airport</td>
                <td>code</td>
                <td>q1</td>
                <td>q2</td>
                <td>q3</td>
                <td>q4</td>
                <td><img src='resources/flags/JFK.png' width="40" height="40"></img></td>
                <td><a href="">Edit</a> </td>    
            </tr>
        </table>
    </body>
</html>
