<%-- 
    Document   : loginAction
    Created on : 29/05/2019, 5:48:01 PM
    Author     : Kyle
--%>

<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*" import="java.sql.*"%>
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
                        
                        int key = 100000 + (new Random().nextInt(99999));
                        String email = request.getParameter("email");
                        String password = request.getParameter("password");
                        String name = request.getParameter("name");
                        String phone = request.getParameter("phone");
                        String ID = "" + key;

                        User users = new User( ID,  email,  password,  name,  phone);                                   
                        manager.addUser(ID, email, password, name, phone);
                        session.setAttribute("userLogin", users);
                        
                        if (users != null) {
                            session.setAttribute("userLogin", users);
                            response.sendRedirect("welcome.jsp");                        
                        }else{
                            session.setAttribute("createErr", "Failed to create user");
                            response.sendRedirect("register.jsp");                               
                        }             
                %>
        </body>
</html>
