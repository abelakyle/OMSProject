<%-- 
    Document   : myAccount
    Created on : 28/05/2019, 8:30:57 PM
    Author     : Kyle_2
--%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>My Account</title>
        </head>        
    <jsp:include page="header.jsp"/>
    
    <body>
        <h1>Your Account Details</h1>
        
        <p><a href="logout.jsp">Log Out</a></p>
        <p><a href="profile.jsp">Profile</a></p> 
        <p><a href="accessLog.jsp">Access Log</a></p>
        <p><a href="orderHistory.jsp">Order History</a></p>
        
    </body>
</html>
