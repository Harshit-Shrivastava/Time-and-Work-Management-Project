<%-- 
    Document   : leave
    Created on : 19 Apr, 2012, 10:29:37 AM
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
        <h1><font color="#800000">Project Discussions</font></h1><hr>

        </hr>
        <br/>
        <form name="form3" action="newdis.jsp" method="get">
            Post a discussion topic??<br/><br>
            <input type="text" name="newdis" size="105" placeholder="new discussion topic">
            <br><br/>
            <center>
                <input type="submit" value="Post">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Clear">
            </center
            </br>
        </form>
        <br></br>
        Running discussions:-<hr></hr>
        <br/>
        <%
            try {

                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                System.out.println("Exception in class");
            }
            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from discussions limit 0,4");
                while (rs.next()) {
                    String data = rs.getString(1);
                    String user = rs.getString(2);
        %><br/>
        <%      out.println(data);
        %><h6>Posted by:
            <%       out.println(" " + user);
            %></h6><hr>
            <%
                    }
                } catch (Exception e) {
                }
            %>

    </body>
</html>
