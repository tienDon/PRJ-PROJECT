<%-- 
    Document   : MechanicDashboard
    Created on : Feb 24, 2025, 10:18:19 PM
    Author     : ASUS
--%>

<%@page import="dao.ServiceTicketDAO"%>
<%@page import="model.ServiceTicket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Mechanic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Mechanic mecha = (Mechanic) session.getAttribute("mechanic");
        %>
        <h1>hello <%=mecha.getName()%></h1>

        <a href="searchMechanicServlet" >view ticket </a>
        <form action="searchMechanicServlet" accept-charset="utf-8">
            <label for="searchid">search ticket</label>
            <input type="text" name="search" id="searchid"/>

            <div>
                <label for="custID">custID</label>
                <input type="radio" name="searchType" value="custID" id="custID"/>

                <label for="carID">carID</label>
                <input type="radio" name="searchType" value="carID" id="carID"/>

                <label for="dateReceived">dateReceived</label>
                <input type="radio" name="searchType" value="dateReceived" id="dateReceived"/>
            </div>

            <input type="submit" value="submit"/>
        </form>

        <!--        view ticket-->
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

                    ArrayList<ServiceTicket> ticketList = (ArrayList) request.getAttribute("tickets");

                    if (ticketList != null) {
                        for (ServiceTicket ticket : ticketList) {
                %>
                <tr>
                    <td><%= ticket.getServiceTicketID()%></td>
                    <td><%= ticket.getDateReceived()%></td>
                    <td><%= ticket.getDateReturned()%></td>
                    <td><%= ticket.getCustID()%></td>
                    <td><%= ticket.getCarID()%></td>
                    <td><a href="#">update ticket</a></td>
                </tr>
                <%
                    }
                } else {
                    ServiceTicketDAO d = new ServiceTicketDAO();
                    for (ServiceTicket ticket : d.getALLServiceTicketByID()) {
                %>
                <tr>
                    <td><%= ticket.getServiceTicketID()%></td>
                    <td><%= ticket.getDateReceived()%></td>
                    <td><%= ticket.getDateReturned()%></td>
                    <td><%= ticket.getCustID()%></td>
                    <td><%= ticket.getCarID()%></td>
                    <td><a href="#">update ticket</a></td>
                </tr>
                <%
                        }
                    }%>
            </tbody>
        </table>

    </body>
</html>
