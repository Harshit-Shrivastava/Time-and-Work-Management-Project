<%-- 
    Document   : index
    Created on : 26 Mar, 2012, 8:18:16 PM
    Author     : Harshit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <script type="text/javascript" language="javascript">
            //method for validation of form
            function validateForm()
            {
                //validation of name text-field
                var x=document.forms["form1"]["email"].value;
                if (x==null || x=="")
                {
                    alert("Please enter email");
                    return false;
                }
	
                //validation of reason text-area
                var y=document.forms["form1"]["password"].value;
                if (y==null || y=="")
                {
                    alert("Please enter password");
                    return false;
                }
            }

        </script>
    </head>
    <body>
    <div id="topshade"></div>
    

        <div id="top"><img src="top.jpg" width="100%" height="150px"></div>
        <div id="heading"><center><font size="400%"><%out.println("globoSoft");%></font></center>
        </div>
        <div id="ex">
            <div id="lol">
                <h1 font color="#800000">Welcome to globoSoft</h1>
            </div></div>
        <div id="dleft">
            <form name="form1" method="post" action="redirect.jsp" onsubmit="return validateForm()">
                <table border="1">
                    <tr>
                        <td>
                        Login
                        </td>
                <br/><br/>
                </tr>
                <tr>
                    <td>
                <table border="0">
                    <tr>
                        <td>email:</td>
                        <td><input type="email" name="email" size="32" placeholder="Enter email"></td>    
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" size="32" placeholder="Enter password"></td>
                    </tr>

                    <tr>
                        <%@page import="java.util.Random"%>
                    <%Random rand = new Random();
                        int a = rand.nextInt(11);
                        int b = rand.nextInt(11);
                        int sum = a + b;
                        session.setAttribute("utest",sum);
                    %>
                        <td>
                            <%out.println(a + "+" + b + "=");
                            %>
                        </td>
                        <td>
                            <input type="text" name="test" size="10" placeholder="Enter sum"></input>
                        </td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Submit"></center></td>
                    <td><center><input type="reset" value="Clear"></center></td>
                    </tr>
                    
                </table>
                    </td>
                </tr>
                </table>
            </form>
        </div>


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
