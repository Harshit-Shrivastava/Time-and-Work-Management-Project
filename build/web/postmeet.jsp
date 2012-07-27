<%-- 
    Document   : postmeet
    Created on : 30 Apr, 2012, 1:31:18 PM
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
        <h1><font color="#800000">Schedule a meeting</font></h1><hr></hr>
        <br/></br>
        Please enter meeting details:- <br/><br/>
        <form action="meetpost.jsp" method="get">
            <input type="text" name="meetdet" size="105" placeholder="meeting details">
            <br/><br/>
            <center>
                <input type="submit" value="Post">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Clear">
        </form>
        
    </body>
</html>
