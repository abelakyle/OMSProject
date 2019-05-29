<%-- 
    Document   : welcome
    Created on : 18/04/2019, 1:26:43 PM
    Author     : carti
--%>

<%@page import="uts.wsd.User"%>
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
        
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String postcode = request.getParameter("postCode");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String ID = ""+(new Random().nextInt(999999));
            
            User user = new User(firstName, lastName, ID, password, email, phone, address, city, state, postcode, dateOfBirth);
            session.setAttribute("user", user);
        %>                          
        
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
            <p>Welcome: <%= firstName + " " + lastName %>! </p>
            <p>Your ID is <%= ID %>. </p>
            <p>Your email is <%= email %>. </p>
            <p>Your password is <%= password %>. </p>
            <p>Your phone number is <%= phone %>. </p>
            <p>Your address is <%= address %>. </p>
            <p>Your city is <%= city %>. </p>
            <p>Your state is <%= state %>. </p>
            <p>Your postcode is <%= postcode %>. </p>
            <p>Your date of birth is <%= dateOfBirth %>. </p>               
        </body>
</html>
