
<%@page import="uts.isd.model.dao.DBManager"%>
<%@page import="uts.isd.model.dao.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="uts.isd.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>My Account Page</title>
    </head>

    <jsp:include page="header.jsp"/>
    <%
        User user = (User) session.getAttribute("userEdit");
    %>
    <body >
        <h1>Account Profile</h1>        
        <form action="edit_user.jsp" method="POST">
            <table>
                <tr><td>Student ID</td><td><%= user.getID()%></td></tr>
                <tr><td>Full name</td><td><input type="text" value="<%= user.getName()%>" name="name"></td></tr>
                <tr><td>Email</td><td><input type="text" value="<%= user.getEmail()%>" name="email"></td></tr>                
                <tr><td>Password</td><td><input type="password" value="<%= user.getPassword()%>" name="password"></td></tr>   
                <tr><td>Date of Birth</td><td><input type="date" value="<%= user.getDob()%>" name="dob"></td></tr> 
                <tr><td>Phone number</td><td><input type="text" value="<%= user.getPhone()%>" name="phone"></td></tr>
                <tr><td><input type="hidden" value="updated" name="updated"></td>
                    <td><input class="button" type="submit" value="Save"> 
                        &emsp; 
                        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
                        &emsp; 
                        <button class="button" type="button" onclick="location.href = 'delete_user.jsp'" > Delete User </button>
                    </td>
                </tr>
            </table>
        </form>
        <%           
            DBManager manager = (DBManager)session.getAttribute("manager"); 

            if (request.getParameter("updated") != null) {
                        manager.updateUser(request.getParameter("ID"), request.getParameter("email"), request.getParameter("password"), request.getParameter("name"), request.getParameter("phone"), 
                                request.getParameter("address"), request.getParameter("city"), request.getParameter("state"), request.getParameter("postcode"), request.getParameter("dob"));
                        User userEdit = manager.findUser(user.getID(), request.getParameter("password"));
                        
                if (userEdit != null) {
                    session.setAttribute("user", userEdit);
                %>
                    <p class="outline"> User details updated.</p>
                <%} else {%>
                    <p class="outline"> Could not update database!</p> 
                <%}%>
            <%}%>
    </body>
</html>