<%-- 
    Document   : accessLog
    Created on : 30/05/2019, 8:21:47 PM
    Author     : Kyle_2
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="uts.isd.model.*"%>
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
        
        <table class="account" width="100%">
            <thead class="h"><tr ><td class="a">Log ID</td><td class="a">Login Date</td><td class="a">Login Time</td><td class="a">Logout Date </td><td class="a">Logout Time</td></tr></thead>
            
                <%  
                        DBManager manager = (DBManager)session.getAttribute("manager");
                        ArrayList<Log> logList = (ArrayList<Log>)manager.getAccessLog(user.getID());
                        for(Log log : logList){ 
                %>                                   
                            <tr class ="h"><td class="a"><%= log.getLogID() %></td><td class="a"><%= log.getLoginDate() %></td><td class="a"><%= log.getLoginTime() %></td><td class="a"><%= log.getLogoutDate() %></td><td class="a"><%= log.getLogoutTime() %></td></tr>                        
            <% } %>
                             
        </table>
            <form action="deleteLogAction.jsp" method="POST">
                &nbsp; <table>
                    <tr><td>Enter Log ID to delete: &nbsp; </td><td><input type="text" name="eraseID"</td>
                        <td>&nbsp; <input name="" type="submit" value ="Delete"></td></tr>
                </table>
            </form>
    </body>
</html>
