<%-- 
    Document   : getmeet
    Created on : 30 Apr, 2012, 5:39:33 PM
    Author     : Harshit
--%>

<%@page import="javax.xml.transform.Source"%>
<%@page import="dbconnect.dbconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><font color="#800000">Scheduled Meetings</font></h1>
            <%@ page language ="java" import="java.sql.*" import="Source Packages.dbconnect.*" %>
            <%
                String rec = "" + session.getAttribute("log");
                try {
                    String query = "select * from meeting limit 0,5";
                    dbconnect db = new dbconnect(query);
                    ResultSet rs = db.exquery();
            %><hr><%
                while (rs.next()) {
                    String meet = rs.getString(1);

        %><br/>
        <%      out.println(meet);
        %><br/><hr>
        <%
                }
            } catch (Exception e) {
            }


        %>
    </body>
</html>
