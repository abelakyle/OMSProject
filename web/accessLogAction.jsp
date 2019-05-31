<%-- 
    Document   : accessLogAction
    Created on : 31/05/2019, 1:37:39 AM
    Author     : Kyle_2
--%>

<%@page import="uts.isd.model.dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <body>
        <table>
            <tr><td>Log ID</td><td>Login Time</td><td>Logout Time</td></tr>
            
                <%  
                        DBManager manager = (DBManager)session.getAttribute("manager");
                        User user = session.getAttribute("userLogin");
                        ArrayList<Log> results = manager.getAccessLog(user.getID());
                        for(Log log : results){ 
                %>
                        
            <tr><td><%= log.getID() %></td><td><%= log.getLoginTime() %></td><td><%= log.getLogoutTime() %></td></tr>
                        
            <% } %>
        </table>
    </body>
    
</html>
