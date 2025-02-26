<%-- 
    Document   : SaleDashboard
    Created on : Feb 24, 2025, 11:42:58 PM
    Author     : ASUS
--%>

<%@page import="model.SalePerson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            SalePerson s = (SalePerson) session.getAttribute("sale");
        %>
        <%= s.getName() %>
        <p>sale</p>
    </body>
</html>
