<%-- 
    Document   : work
    Created on : 19 Apr, 2012, 10:29:29 AM
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
        <h1><font color="#800000">Received Messages</font></h1><hr></hr>
            <%@ page language ="java" import="java.sql.*" %>
            <%
                String rec = "" + session.getAttribute("log");

                String query = "select * from message where reciever='" + rec + "' limit 0,6";
                dbconnect db = new dbconnect(query);
                ResultSet rs = db.exquery();

                while (rs.next()) {
                    String sen = rs.getString(1);
                    String msg = rs.getString(3);
            %><br/>
        <%      out.println(msg);
        %><h6>Sent by:
            <%       out.println(" " + sen);
            %></h6><hr><%
                    }
                }
             
                catch(Exception e

             
             
            ){}
        
            %>
    </body>
</html>
