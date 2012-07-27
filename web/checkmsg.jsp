<%-- 
    Document   : checkmsg
    Created on : 3 May, 2012, 5:12:02 PM
    Author     : Harshit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page language ="java" import="java.sql.*" %>
        <%
            String rec = request.getParameter("reciever");
            String msg = request.getParameter("msg");
            String sen = "" + session.getAttribute("log");
            out.println(rec);
            out.println(msg);
            out.println(sen);
            try {

                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                System.out.println("Exception in class");
            }
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD", "root", "");
            Statement st = con.createStatement();
            int rs = st.executeUpdate("INSERT INTO `OOAD`.`message`"
                    + " (`sender`, `reciever`, `message`) VALUES ('" + sen + "', '" + rec + "', '" + msg + "')");
            if (rs != 0) {
                response.sendRedirect("profile.jsp");
            } else {
                response.sendRedirect("sorry.jsp");
            }


        %>
    </body>
</html>
