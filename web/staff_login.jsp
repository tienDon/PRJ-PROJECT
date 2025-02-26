<%-- 
    Document   : staff_login
    Created on : Feb 24, 2025, 9:54:57 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Staff!</h1>
        <form action="loginMechanicServlet" method="POST">
            <!--<input type="hidden" name="action" value="loginStaff"/>-->
            <input type="text" name="txtname"/>
            <input type="submit" value="Login"/>
        </form>



    </body>
</html>
