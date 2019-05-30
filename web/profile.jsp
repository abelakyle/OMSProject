<%@page import="uts.isd.model.User"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Profile</title> 
        </head>
        
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <%
            String log;
            User user = (User)session.getAttribute("userLogin"); 
            if (user != null) {
                log = " &lt " + user.getName() + " &gt";
            } else {
                log = " &lt " + "Guest User" + " &gt";
            }
        %>                                 
        <jsp:include page="header.jsp"/>
        
    <body>
        <h1> Account Profile </h1> 
        <table width="100%" >
            <tr bgcolor="lightgrey" ><td align="right" class="outline">You are logged in as  <%=log%></td></tr>
            <tr><td align="right">
                    <%if (user != null) { %>
                    <u><a class="link" href="edit_user.jsp">Edit Account</a></u> 
                        <%} else { %>
                    <u><a class="link" href="register.jsp">Register</a></u>
                        <%}%>
                    &emsp;<u><a class="link" href="signOut.jsp">Logout</a></u>
                </td>
            </tr>                  
        </table>        
        <hr>
        <% if (user != null) { %>
        <table class="account">
            <thead class="h">
                <tr>
                    <td class="a">ID</td>
                    <td class="a">Name</td>
                    <td class="a">Email</td>
                    <td class="a">Password</td>
                    <td class="a">Address</td>
                    <td class="a">City</td>
                    <td class="a">State</td>
                    <td class="a">Postcode</td>                    
                    <td class="a">DOB</td>
                    <td class="a">Phone Number</td>
                </tr>
            </thead>
            <tbody >
                <tr>
                    <td class="a"> ${user.ID} </td>
                    <td class="a" > ${user.name} </td>
                    <td class="a"> ${user.email} </td>
                    <td class="a"> ${user.password} </td>
                    <td class="a"> ${user.address} </td>
                    <td class="a"> ${user.city} </td>
                    <td class="a"> ${user.state} </td>
                    <td class="a"> ${user.postcode} </td>
                    <td class="a"> ${user.dob} </td>
                    <td class="a"> ${user.phone} </td>
                </tr>
            </tbody>
        </table>
        <% session.setAttribute("userEdit", user); %>
        <%}else{ %>
        <p class="outline">Welcome Guest User</p>
        <%}%>
    </body>
</html>
