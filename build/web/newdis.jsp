<%-- 
    Document   : newdis
    Created on : 3 May, 2012, 8:01:03 PM
    Author     : Harshit
--%>

<%@page import="dbconnect.dbconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page language ="java" import="java.sql.*" %>
        <%
            String dis = request.getParameter("newdis");
            String user = "" + session.getAttribute("log");

            String query = "INSERT INTO `OOAD`.`discussions`"
                    + " (`discussion`, `user`) VALUES ('" + dis + "', '" + user + "')";

            dbconnect db = new dbconnect(query);
            int rs = db.insquery();

            if (rs != 0) {
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("sorry.jsp");
            }

        %>
    </body>
</html>
