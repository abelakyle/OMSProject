<%-- 
    Document   : logoutAction
    Created on : 31/05/2019, 2:29:33 PM
    Author     : Kyle_2
--%>

<%@page import="uts.isd.model.*"%>
<%@page import="uts.isd.model.dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% 
            DBManager manager = (DBManager)session.getAttribute("manager");
            User user = (User)session.getAttribute("userLogin");
            
            String loginDate = (String)session.getAttribute("loginDate");
            String loginTime = (String)session.getAttribute("loginTime");

            String logoutTime = manager.stampTime();    
            
          manager.createAccessLog(user.getID(), loginDate, loginTime, logoutTime);
          session.invalidate();
          response.sendRedirect("logout.jsp");
        %>
        
        
    <body>

    </body>
</html>
