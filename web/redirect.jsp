<%-- 
    Document   : redirect
    Created on : 28 Mar, 2012, 3:55:26 PM
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
        <h1>Redirect</h1>
        <%@ page language ="java" import="java.sql.*" %>
<%
String user=request.getParameter("email");
String pass=request.getParameter("password");
String sum=request.getParameter("test");
String test=""+session.getAttribute("utest");
session.setAttribute("log",user);
out.println(session.getAttribute("log"));
out.println(test);
out.println(sum);
int logged=0;
if(Integer.parseInt(sum)==Integer.parseInt(test))
{
     try{
    
     Class.forName("com.mysql.jdbc.Driver");
         }
     catch(Exception e){
     System.out.println("Exception in class");            
     }
     Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD","root", "");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select email,password from login");
     while(rs.next())
         {
         String username=rs.getString(1);
         String password=rs.getString(2);
         if(user.equals(username) && pass.equals(password))
             {
             out.println("login success");
             System.out.println("Logged in");
             //System.out.println(""+test);
             logged=1;
             
          //out.println((String)session.getAttribute(login));
             
              response.sendRedirect("profile.jsp");
              
        
             break;
             
            
             
         }
     }
     
}
else
{
  response.sendRedirect("sorry.jsp");
}
%>

    </body>
</html>
