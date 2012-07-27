package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class discussions_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1><font color=\"#800000\">Project Discussions</font></h1>\n");
      out.write("        <br/>\n");
      out.write("        <form name=\"form3\" action=\"procdis\" method=\"get\">\n");
      out.write("            Post a discussion topic??<br/><br>\n");
      out.write("        <input type=\"text\" name=\"newdis\" size=\"105\" placeholder=\"new discussion topic\">\n");
      out.write("        <br><br/>\n");
      out.write("        <center>\n");
      out.write("            <input type=\"submit\" value=\"Post\">\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"reset\" value=\"Clear\">\n");
      out.write("        </center\n");
      out.write("        </br>\n");
      out.write("        </form>\n");
      out.write("        <br></br>\n");
      out.write("        Running discussions:-\n");
      out.write("        <br/></br>\n");
      out.write("        ");

        try{
    
     Class.forName("com.mysql.jdbc.Driver");
         }
     catch(Exception e){
     System.out.println("Exception in class");            
     }
     Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/OOAD","root", "");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from discussions");
     while(rs.next())
         {
         String data=rs.getString(1);
         String user=rs.getString(2);
         
      out.write("<br/>\n");
      out.write("           ");
      out.println(data);
         
      out.write("<br/>Posted by:\n");
      out.write("          ");
       out.println(" "+user);
         
      out.write("<br/>\n");
      out.write("          ");
      
         }
     }
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
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
