<%-- 
    Document   : login
    Created on : 18/04/2019, 1:00:58 PM
    Author     : carti
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Log In</title>
                
        </head>
        
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <% User user = (User)session.getAttribute("user"); %>
        
        <div class ="navbar">
                <span class="leftalign">
                        <a href="home.jsp">Home</a>                       
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
                <h1>Sign In</h1>
                <% if(user != null){ %>
                        <p>You are already signed in.</p>
                <% }   else    { %>
                        <form action="login.jsp" method="POST">
                                <table>
                                        <tr><td>ID</td><td><input type="text" name="email"></td></tr>
                                        <tr><td>Password</td><td><input type="text" name="password"></td></tr>
                                        <tr>
                                            <td><label for=""></label></td>
                                            <td><input name="" type="submit" value="Log In"></td>
                                        </tr>
                                <table>
                        </form>
               <%  } %>
               
        </body> 
</html>
