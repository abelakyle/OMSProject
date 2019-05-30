<%-- 
    Document   : accessLog
    Created on : 30/05/2019, 8:21:47 PM
    Author     : Kyle_2
--%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/stylish.css">
        <title>Access Log</title>
    </head>
    
    <jsp:include page="header.jsp"/>    
    <% User user = (User)session.getAttribute("userLogin"); %>
    
    <body>
        <h1> <%= user.getName() %>'s Access Log</h1>
    </body>
</html>
