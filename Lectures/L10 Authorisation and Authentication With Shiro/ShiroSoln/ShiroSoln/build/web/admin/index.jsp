<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the Admin Home Page</title>
    </head>
    
        <h3>Welcome <shiro:principal/>,  This is the admin home page</h3>
        <br>
        <h3>It should be visible to authenticated users only</h3> 
        <shiro:hasPermission name="stats_stuff">
            <br>
            <font color="red">Stats stuff</font>
        </shiro:hasPermission>
        <shiro:hasPermission name="academic_content">
            <br>
           <font color="red">Academic stuff</font>
        </shiro:hasPermission>
        
        <shiro:hasRole name="lecturer">
            <br>
            <font color="green">You are a lecturer </font>
        </shiro:hasRole>
        <shiro:hasRole name="statistician">
            <br>
            <font color="green">You are a statistician </font>
        </shiro:hasRole>
        <shiro:hasRole name="admin">
            <br>
            <font color="green">You are an admin</font>
        </shiro:hasRole>
       
        <shiro:lacksRole name="peasant">
            <br>
            <font color="blue">You are a NOT a peasant</font>
        </shiro:lacksRole>  
        
        <shiro:hasAnyRoles name="lecturer, admin">
            <br>
            <font color="pink">You are either a lecturer or admin or both</font>
        </shiro:hasAnyRoles>

        <br><br>
        <a href="accounts.jsp">View our user accounts</a>
        <br>
        <a href="secret/index.jsp">View top secret information</a>
        <br><br>
        <a href="/ShiroSoln/logout">Log Out</a>
    

