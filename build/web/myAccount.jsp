<%-- 
    Document   : myAccount
    Created on : 28/05/2019, 8:30:57 PM
    Author     : Kyle_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>My Account</title>
        </head>
        
        <header>
                <h1>Online Movie Store</h1>                    
        </header>
        
        <div class ="navbar">
                <span class="leftalign">
                        <a href="home.jsp">Home</a>                       
                </span>
                <span class="rightalign">
                        <a href="login.jsp">Log In</a>
                        <a href="register.jsp">Register</a>
                        <a href="cart.jsp">Cart</a>
                </span> 
        </div>
    
    <body>
        <h1>Your Account Details</h1>
        
        <p>Sign Out</p>
        <p><a href="profile.jsp">Profile</a></p> 
        <p><a href="accessLog.jsp">Access Logs</a></p>
        <p><a href="orderHistory.jsp">Order History</a></p>
        
    </body>
</html>
