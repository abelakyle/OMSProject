<%-- 
    Document   : home
    Created on : 28/05/2019, 7:29:51 PM
    Author     : Kyle_2
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" type="text/css" href="style/stylish.css">
            <title>Home</title>
        </head>
    
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <% User user = (User)session.getAttribute("userLogin"); %>                                 
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
                <p><a href="signOut.jsp">Sign out</a></p>
                <p><a href="myAccount.jsp">My Account</a></p> 
                <p><a href="catalogue.jsp">Movie Catalogue</a></p>
                <p><a href="cart.jsp">Cart</a></p>

        </body> 
        
</html>
