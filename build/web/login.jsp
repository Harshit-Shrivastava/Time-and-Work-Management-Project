<%-- 
    Document   : login
    Created on : 13 Apr, 2012, 10:28:13 AM
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
        Please enter login details
        <form method="post" action="redirect.jsp">
            Enter email&nbsp;<input type="email" name="email" size="32">
            <br/>
            Enter password &nbsp;<input type="password" name="pass" size="32">
            <%@page import="java.util.Random"%>
            <%Random rand = new Random(); 
               int a=rand.nextInt(11);
               int b=rand.nextInt(11);
               int sum=a+b;
               %>
               <br/>
               <%
               out.println(a+"+"+b+"=");
               session.setAttribute("Sum",sum);
               //session.getAttribute(Sum);
               //out.println(session.getAttribute("Sum"));
            
                    %>
                    
               <input type="text" name="user" size="5">     
            <br/><input type="submit" value="submit">
        </form>

        
    </body>
</html>
