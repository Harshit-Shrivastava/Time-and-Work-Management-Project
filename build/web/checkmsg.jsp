<%-- 
    Document   : checkmsg
    Created on : 3 May, 2012, 5:12:02 PM
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
        <%@ page language ="java" import="java.sql.*" import="Source Packages.dbconnect.*" %>
        <%
            String rec = request.getParameter("reciever");
            String msg = request.getParameter("msg");
            String sen = "" + session.getAttribute("log");
            out.println(rec);
            out.println(msg);
            out.println(sen);
            
            String query="INSERT INTO `OOAD`.`message`"
                    + " (`sender`, `reciever`, `message`) VALUES ('" + sen + "', '" + rec + "', '" + msg + "')";
            dbconnect db=new dbconnect(query);
            int rs = db.insquery();
            
            if (rs != 0) {
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("sorry.jsp");
            }
        %>
    </body>
</html>
