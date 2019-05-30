<%-- 
    Document   : register
    Created on : 18/04/2019, 1:02:59 PM
    Author     : carti
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Register</title>
        </head>
        
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <% User user = (User)session.getAttribute("user"); %>                                 
        <div class ="navbar">
                <span class="leftalign">
                        <% if(user != null){ %>
                            <a href="home.jsp"> Home</a>
                        <% } else { %> 
                            <a href="index.jsp">Home</a>
                            <% } %>
                </span>
                <span class="rightalign">
                <% if(user != null){ %>
                        <a href="myAccount.jsp"> <%=user%>'s Profile</a>
                        <a href="cart.jsp">Cart</a>
                <% } else { %>                      
                        <a href="login.jsp">Log In</a>
                        <a href="register.jsp">Register</a>
                        <a href="cart.jsp">Cart</a>
                <% } %>                    
                </span> 
        </div>
        
        <body>
                <h1>Register</h1>
                <form action="registerAction.jsp" method="POST">
                    <table>
                        <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                        <tr><td>Password</td><td><input type="text" name="password"></td></tr>
                        <tr><td>Full Name</td><td><input type="text" name="name"></td></tr>
                        <tr><td>Phone Number</td><td><input type="text" name="phone"></td></tr>
                        <tr><td>Address</td><td><input type="text" name="address"></td></tr>
                        <tr><td>City</td><td><input type="text" name="city"></td></tr>
                        <tr><td>State</td><td><input type="text" name="state"></td></tr>
                        <tr><td>Post Code</td><td><input type="text" name="postCode"></td></tr>
                        <tr><td>Date of Birth</td><td><input type="text" name="dob"></td></tr>
                        <tr>
                            <td><label for=""></label></td>
                            <td><input name="" type="submit" value="Register">
                            &nbsp; 
                                <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                            </td>
                        </tr>
                    </table>
        </body>
</html>
