<%-- 
    Document   : message
    Created on : 19 Apr, 2012, 10:28:02 AM
    Author     : Harshit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" language="javascript">
            //method for validation of form
            function validateForm()
            {
                alert('called');
                //validation of name text-field
                var x=document.forms["form2"]["reciever"].value;
                if (x==null || x=="")
                {
                    alert("Please enter reciever");
                    return false;
                }
	
                //validation of reason text-area
                var y=document.forms["form2"]["msg"].value;
                if (y==null || y=="")
                {
                    alert("Please enter message");
                    return false;
                }
            }

        </script>
    </head>
    <body>
        <h1><font color="#800000">Send a Message</font></h1><hr></hr>
        <form name="form2" action="checkmsg.jsp" onclick="return validateForm();">
            <table border="0">
                <tr>
                    <td>Send message to:</td>
                    <td>
            <input type="email" name="reciever" size="50" placeholder="Reciever's email"></input>
                    </td>
                    <td>
            <input type="submit" value="Send"></input>            
                    </td>
                <tr>   <td>Your message:</td> <td>
            <textarea name="msg" rows="4" columns="464" placeholder="Type you message here">
</textarea></td>
<td>
    <input type="reset" value="clear"></input>
</td>
                </tr>
                <tr>
                    <td>
            
                    </td>
                    <td>
                        <br/>
            
</p></td>
                </tr>
            </table>
    
    </body>
</html>
