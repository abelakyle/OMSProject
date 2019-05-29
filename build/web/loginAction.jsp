<%-- 
    Document   : loginAction
    Created on : 29/05/2019, 5:48:01 PM
    Author     : Kyle
--%>

<%@page import="java.lang.String"%>
<%@page import="uts.isd.model.User"%>
<%@page import="uts.isd.model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <body>
                <%
                        //Activate the database search-validate once DBManager functions are completed
                        DBManager manager = (DBManager)session.getAttribute("manager");


                        String ID = request.getParameter("ID");
                        String password = request.getParameter("password");            
                        User users = manager.findUser(ID, password);
                        User user = new User("name",  "ID",  "password",  "email",  "phone",  "address",  "city",  "state",  "postcode",  "dateOfBirth");
                        if (users != null) {
                            session.setAttribute("userLogin", user);
                            response.sendRedirect("welcome.jsp");                        
                        }else{
                            session.setAttribute("existErr", "User profile does not exist!");
                            response.sendRedirect("login.jsp");                               
                        }             
                %>
        </body>
</html>
