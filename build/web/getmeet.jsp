<%-- 
    Document   : getmeet
    Created on : 30 Apr, 2012, 5:39:33 PM
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
        <h1><font color="#800000">Scheduled Meetings</font></h1>
        <%@ page language ="java" import="java.sql.*" %>
        <%
        String rec=""+session.getAttribute("log");
        try{
    
     Class.forName("com.mysql.jdbc.Driver");
         }
     catch(Exception e){
     System.out.println("Exception in class");            
     }
        try{
     Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD","root", "");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from meeting limit 0,5");
        %><hr></hr><%
     while(rs.next())
         {
         String meet=rs.getString(1);
         
         %><br/>
           <%      out.println(meet);
           %><br/><hr>
          <%
         }
     }catch(Exception e){}
        

%>
    </body>
</html>
