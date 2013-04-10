<%-- 
    Document   : redirect
    Created on : 28 Mar, 2012, 3:55:26 PM
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
        <h1>Redirect</h1>
        <%@ page language ="java" import="java.sql.*" %>
        <%
            String user = request.getParameter("email");
            String pass = request.getParameter("password");
            String sum = request.getParameter("test");
            String test = "" + session.getAttribute("utest");
            session.setAttribute("log", user);
            out.println(session.getAttribute("log"));
            out.println(test);
            out.println(sum);
            int logged = 0;
            if (Integer.parseInt(sum) == Integer.parseInt(test)) {

                String query = "select email,password from login";
                dbconnect db = new dbconnect(query);
                ResultSet rs = db.exquery();

                while (rs.next()) {
                    String username = rs.getString(1);
                    String password = rs.getString(2);
                    if (user.equals(username) && pass.equals(password)) {
                        out.println("login success");
                        System.out.println("Logged in");
                        logged = 1;
                        response.sendRedirect("profile.jsp");
                        break;
                    }
                }
            } else {
                response.sendRedirect("sorry.jsp");
            }
        %>

    </body>
</html>
