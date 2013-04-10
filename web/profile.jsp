<%-- 
    Document   : profile
    Created on : 13 Apr, 2012, 10:32:17 AM
    Author     : Harshit
--%>

<%@page import="dbconnect.dbconnect"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.TABLESWITCH"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time and Work Management</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <script>            
            function initialload()
            {
                //alert('called');
                document.getElementById("log").style.cursor=pointer;
            }

            function validateData()
            {
                alert('called');
              
 
                xmlhttp.send();
            }

            function loadPage(loc)
            {
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        document.getElementById("lol").innerHTML=xmlhttp.responseText;
                    }
                }
                if(loc==1)
                    xmlhttp.open("GET","home.jsp",true);
                else if(loc==2)
                    xmlhttp.open("GET","recmsg.jsp",true);
                else if(loc==3)
                    xmlhttp.open("GET","sendmsg.jsp",true);
                else if(loc==4)
                    xmlhttp.open("GET","meeting.jsp",true);
                else if(loc==5)
                    xmlhttp.open("GET","discussions.jsp",true);
                else if(loc==6)
                    xmlhttp.open("GET","postmeet.jsp",true);
                else if(loc==7)
                    xmlhttp.open("GET","getmeet.jsp",true);
                xmlhttp.send();
            }

        </script>
    </head>

    <body onload="initialload();">

        <div id="topshade"></div>

        <div id="top"><img src="top.jpg" width="100%" height="150px"></div>
        <div id="heading"><center><font size="400%"><%out.println("globoSoft");%></font></center>
        </div>

        <div id="menu">
            <ul>
                <li><opt onclick="loadPage(5);">Discussions</opt></li>
                <li><opt onclick="loadPage(4);">Meetings</opt></li>
                <li><opt onclick="loadPage(3);">Outbox</opt></li>
                <li><opt onclick="loadPage(2);">Inbox</opt></li>
                <li><opt onclick="loadPage(1);">Home</opt></li>
            </ul>
        </div>
        <p class="off">
        <div id="ex">
            <div id="lol">
                <h1 ><font color="#800000">Home</font></h1><hr></hr>
                    <%@ page language ="java" import="java.sql.*" %>
                    <%
                        String current = "" + session.getAttribute("log");
                        String logged = "" + session.getAttribute("logged");
                        String name = null;
                        String department = null;
                        String designation = null;
                        String address = null;
                        String phno = null;
                        String email = null;

                        String query = "select * from profile where email='" + current + "'";

                        dbconnect db = new dbconnect(query);
                        ResultSet rs = db.exquery();

                        while (rs.next()) {
                            name = rs.getString(1);
                            department = rs.getString(2);
                            designation = rs.getString(3);
                            address = rs.getString(4);
                            phno = rs.getString(5);
                            email = rs.getString(6);
                    %>
                <center>
                    <%
                        out.println("Welcome " + name);
                        out.println("<br/>Your personal information");
                    %>
                </center>
                <text-align:right>

                    <table border="0">
                        <%
                                out.println("<tr><td>Department </td>" + "<td>" + department + "</td></tr>");
                                out.println("<br/><tr><td>Address </td>" + "<td>" + address + "</td></tr>");
                                out.println("<br/><tr><td>Phone number </td>" + "<td>" + phno + "</td></tr>");
                                out.println("<br/><tr><td>E-mail " + "<td>" + email + "</td></tr>");
                            }



                        %>   
                    </table>
                    </align:right>
            </div></div>


    </p>
    <div id="foot">
        <br/>
        <center><br/>
            2012 (c) globoSoft Ltd.
            </br>
        </center>
    </div>
</center>

</body>
</html>
