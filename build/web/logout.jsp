<%-- 
    Document   : signOut
    Created on : 29/05/2019, 11:47:20 AM
    Author     : Kyle
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Log Out</title>
        </head>
        
        <% session.invalidate(); %>                                 
        <jsp:include page="header.jsp"/>      
    
        <body>
                <h1>Log Out</h1>
                <p>You have been logged out</p>
                <p><button onclick="window.location.href = 'index.jsp';">Home</button></p>
        </body>
</html>
