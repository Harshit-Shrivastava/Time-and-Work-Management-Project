package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Time and Work Management</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />\n");
      out.write("        <script>            \n");
      out.write("            function initialload()\n");
      out.write("            {\n");
      out.write("                //alert('called');\n");
      out.write("                document.getElementById(\"log\").style.cursor=pointer;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function validateData()\n");
      out.write("            {\n");
      out.write("                alert('called');\n");
      out.write("                /*var xmlhttp;\n");
      out.write("                if (window.XMLHttpRequest)\n");
      out.write("                {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("                    xmlhttp=new XMLHttpRequest();\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {// code for IE6, IE5\n");
      out.write("                    xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("                xmlhttp.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"lol\").innerHTML=xmlhttp.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                xmlhttp.open(\"GET\",\"loginprocess.php\",true);*/\n");
      out.write(" \n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function loadPage(loc)\n");
      out.write("            {\n");
      out.write("                var xmlhttp;\n");
      out.write("                if (window.XMLHttpRequest)\n");
      out.write("                {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("                    xmlhttp=new XMLHttpRequest();\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {// code for IE6, IE5\n");
      out.write("                    xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                }\n");
      out.write("                xmlhttp.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"lol\").innerHTML=xmlhttp.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if(loc==1)\n");
      out.write("                    xmlhttp.open(\"GET\",\"home.jsp\",true);\n");
      out.write("                else if(loc==2)\n");
      out.write("                    xmlhttp.open(\"GET\",\"message.jsp\",true);\n");
      out.write("                else if(loc==3)\n");
      out.write("                    xmlhttp.open(\"GET\",\"meeting.jsp\",true);\n");
      out.write("                else if(loc==4)\n");
      out.write("                    xmlhttp.open(\"GET\",\"work.jsp\",true);\n");
      out.write("                else if(loc==5)\n");
      out.write("                    xmlhttp.open(\"GET\",\"leave.jsp\",true);\n");
      out.write("                else if(loc==6)\n");
      out.write("                    xmlhttp.open(\"GET\",\"feedback.jsp\",true);\n");
      out.write(" \n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body onload=\"initialload();\">\n");
      out.write("        <div id=\"topshade\"></div>\n");
      out.write("        <div id=\"top\"><img src=\"top.jpg\" width=\"100%\" height=\"150px\"></div>\n");
      out.write("        <div id=\"heading\"><center><font size=\"400%\">");
out.println("globoSoft");
      out.write("</font></center>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("        <div id=\"menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><opt onclick=\"loadPage(6);\">Feedback</opt></li>\n");
      out.write("                <li><opt onclick=\"loadPage(5);\">Leave</opt></li>\n");
      out.write("                <li><opt onclick=\"loadPage(4);\">Work</opt></li>\n");
      out.write("                <li><opt onclick=\"loadPage(3);\">Meeting</opt></li>\n");
      out.write("                <li><opt onclick=\"loadPage(2);\">Message</opt></li>\n");
      out.write("                <li><opt onclick=\"loadPage(1);\">Home</opt></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"off\">\n");
      out.write("        <div id=\"ex\">\n");
      out.write("        <div id=\"lol\">\n");
      out.write("            <h1>Home</h1>\n");
      out.write("            \n");
      out.write("            ");
  /**    
            String logged=""+session.getAttribute("logged");
            String name=null;
            String department=null;
            String designation=null;
            String address=null;
            String phno=null;
            String email=null;
            try{
    
     Class.forName("com.mysql.jdbc.Driver");
         }
     catch(Exception e){
     System.out.println("Exception in class");            
     }
     Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD","root", "");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from profile where email="+logged);
     */
            
      out.write("\n");
      out.write("     \n");
      out.write("      ");

     String current=""+session.getAttribute("log");
      /*while(rs.next())
         {
            name=rs.getString(1);
            department=rs.getString(2);
            designation=rs.getString(3);
            address=rs.getString(4);
            phno=rs.getString(5);
            email=rs.getString(6);
            
        out.println("Welcome "+name);
        out.println("Your personal information");
        out.println("Department "+department);
        out.println("Address "+address);
        out.println("Phone number "+phno);
        out.println("E-mail "+email);
         }
     
     */
        
     
      out.write("   \n");
      out.write("        </div></div>\n");
      out.write("            \n");
      out.write("         \n");
      out.write("    </p>\n");
      out.write("    <div id=\"foot\">\n");
      out.write("        <br/>\n");
      out.write("        <center><br/>\n");
      out.write("            2012 (c) globoSoft Ltd.\n");
      out.write("            </br>\n");
      out.write("        </center>\n");
      out.write("    </div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
