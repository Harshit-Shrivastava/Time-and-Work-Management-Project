<%-- 
    Document   : home
    Created on : 30 Apr, 2012, 11:19:11 AM
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
        <h1 ><font color="#800000">Home</font></h1><hr>
            <%@ page language ="java" import="java.sql.*" %>
            <%
                String current = "" + session.getAttribute("log");
                String logged = "" + session.getAttribute("logged");
                String name = null;
                String department = null;
                String designation = null;
                String address = null;
                String phno = null;
                String email = null;

                String query = "select * from profile where email='" + current + "'";
                dbconnect db = new dbconnect(query);
                ResultSet rs = db.exquery();
                while (rs.next()) {
                    name = rs.getString(1);
                    department = rs.getString(2);
                    designation = rs.getString(3);
                    address = rs.getString(4);
                    phno = rs.getString(5);
                    email = rs.getString(6);
            %>
    <center>
        <%
            out.println("Welcome " + name);
            out.println("<br/>Your personal information");
        %>
    </center>
    <text-align:right>

        <table border="0">
            <%
                    out.println("<tr><td>Department </td>" + "<td>" + department + "</td></tr>");
                    out.println("<br/><tr><td>Address </td>" + "<td>" + address + "</td></tr>");
                    out.println("<br/><tr><td>Phone number </td>" + "<td>" + phno + "</td></tr>");
                    out.println("<br/><tr><td>E-mail " + "<td>" + email + "</td></tr>");
                }



            %>   
        </table>
    </align:right> 
</body>
</html>
