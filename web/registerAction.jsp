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
                        
                        String email = request.getParameter("email");
                        String password = request.getParameter("password");
                        String name = request.getParameter("name");
                        String phone = request.getParameter("phone");
                        String address = request.getParameter("address");
                        String city = request.getParameter("city");
                        String state = request.getParameter("state");
                        String postcode = request.getParameter("postCode");
                        String dob = request.getParameter("dob");
                        String ID = ""+(new Random().nextInt(999999));

                        User users = new User( ID,  email,  password,  name,  phone,  address,  city,  state,  postcode,  dob);                                   
                        manager.addUser(ID, email, password, name, phone, address, city, state, postcode, dob);
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
