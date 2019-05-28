<%-- 
    Document   : register
    Created on : 18/04/2019, 1:02:59 PM
    Author     : carti
--%>

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
                <h1>Register</h1>
                <form action="welcome.jsp" method="POST">
                    <table>
                        <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                        <tr><td>Password</td><td><input type="text" name="password"></td></tr>
                        <tr><td>First Name</td><td><input type="text" name="firstName"></td></tr>
                        <tr><td>Last Name</td><td><input type="text" name="lastName"></td></tr>
                        <tr><td>Phone Number</td><td><input type="text" name="phone"></td></tr>
                        <tr><td>Address</td><td><input type="text" name="address"></td></tr>
                        <tr><td>City</td><td><input type="text" name="city"></td></tr>
                        <tr><td>State</td><td><input type="text" name="state"></td></tr>
                        <tr><td>Post Code</td><td><input type="text" name="postCode"></td></tr>
                        <tr><td>Date of Birth</td><td><input type="text" name="dateOfBirth"></td></tr>
                        <tr>
                            <td><label for=""></label></td>
                            <td><input name="" type="submit" value="Register"></td>
                        </tr>
                    </table>
        </body>
</html>
