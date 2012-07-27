<%-- 
    Document   : sorry.jsp
    Created on : 29 Apr, 2012, 7:47:46 PM
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
        <h1> <font color="#800000">Sorry</font></h1>
        <%
        out.println(session.getAttribute("user"));
        %>
    </body>
</html>
