<%-- 
    Document   : meetpost
    Created on : 3 May, 2012, 7:36:09 PM
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

            String meet = request.getParameter("meetdet");

            String query = "INSERT INTO `OOAD`.`meeting`"
                    + " (`agenda`) VALUES ('" + meet + "')";
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
