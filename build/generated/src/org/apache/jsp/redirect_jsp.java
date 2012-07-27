package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class redirect_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <h1>Redirect</h1>\n");
      out.write("        \n");

String user=request.getParameter("email");
String pass=request.getParameter("password");
String sum=request.getParameter("test");
String test=""+session.getAttribute("utest");
session.setAttribute("nowlog",user);
out.println(session.getAttribute("nowlog"));
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
             
              
      out.write("\n");
      out.write("              ");
      if (true) {
        _jspx_page_context.forward("profile.jsp");
        return;
      }
      out.write("\n");
      out.write("              ");

              
        
             break;
             
            
             
         }
     }
     
}
//else
//{
 // out.println("Failed");
//}

      out.write("\n");
      out.write("\n");
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
