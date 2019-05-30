<%-- 
    Document   : welcome
    Created on : 18/04/2019, 1:26:43 PM
    Author     : carti
--%>

<%@page import="uts.isd.model.User"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Welcome</title>
        </head>
        
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <% User user = (User)session.getAttribute("userLogin"); %>                          
        
        <div class ="navbar">
                <span class="leftalign">
                    <% if(user!=null) { %>
                        <a href="home.jsp">Home</a>
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
            <p>Welcome: <%= user.getName() %>! </p>
            <p>Your ID is <%= user.getID() %>. </p>
            <p>Your email is <%= user.getEmail() %>. </p>
            <p>Your password is <%= user.getPassword() %>. </p>
            <p>Your phone number is <%= user.getPhone() %>. </p>
            <p>Your address is <%= user.getAddress() %>. </p>
            <p>Your city is <%= user.getCity() %>. </p>
            <p>Your state is <%= user.getState() %>. </p>
            <p>Your postcode is <%= user.getPostcode() %>. </p>
            <p>Your date of birth is <%= user.getDob() %>. </p>
            <p><button class="button" type="button" onclick="location.href = 'home.jsp'" > Home Page </button></p>

        </body>
</html>
