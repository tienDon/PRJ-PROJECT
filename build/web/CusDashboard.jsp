<%-- 
    Document   : CusDashboard
    Created on : Feb 25, 2025, 10:45:38 PM
    Author     : ASUS
--%>

<%@page import="model.ServiceTicket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Customer cus = (Customer) session.getAttribute("cus"); %>
        <h1>Hello <%= cus.getCustName() %></h1>
        
        <a href="cusServiceTicket?action=<%= cus.getCustID() %> ">view service ticket</a>
        
        <table>
            <thead>
                <tr>
                    <th>service TicketID</th>
                    <th>date Received</th>
                    <th>date Returned</th>
                    <th>cust ID</th>
                    <th>car ID</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList<ServiceTicket> ticketList = (ArrayList) request.getAttribute("cusTicket");
                    if (ticketList != null) {
                        for (ServiceTicket ticket : ticketList) {
                %>
                <tr>
                    <td><%= ticket.getServiceTicketID()%></td>
                    <td><%= ticket.getDateReceived()%></td>
                    <td><%= ticket.getDateReturned()%></td>
                    <td><%= ticket.getCustID()%></td>
                    <td><%= ticket.getCarID()%></td>
                    <td><a href="#">details</a></td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr><td colspan="5">No tickets found</td></tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
