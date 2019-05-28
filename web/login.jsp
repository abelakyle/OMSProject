<%-- 
    Document   : login
    Created on : 18/04/2019, 1:00:58 PM
    Author     : carti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="style/stylish.css">
                <title>Login</title>
                
        </head>
        
        <div class="header">
                <header>
                        <h1>Online Movie Store</h1>                    
                </header>
        </div>
        
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
                <h1>Login</h1>
                <form action="loggedIn.jsp" method="POST">
                    <table>
                        <tr><td>ID</td><td><input type="text" name="email"></td></tr>
                        <tr><td>Password</td><td><input type="text" name="password"></td></tr>
                        <tr>
                            <td><label for=""></label></td>
                            <td><input name="" type="submit" value="logIn"></td>
                        </tr>
                    <table>
                </form>
        </body>
</html>
