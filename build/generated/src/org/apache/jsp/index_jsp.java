package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\" />\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("            //method for validation of form\n");
      out.write("            function validateForm()\n");
      out.write("            {\n");
      out.write("                //validation of name text-field\n");
      out.write("                var x=document.forms[\"form1\"][\"email\"].value;\n");
      out.write("                if (x==null || x==\"\")\n");
      out.write("                {\n");
      out.write("                    alert(\"Please enter email\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\t\n");
      out.write("                //validation of reason text-area\n");
      out.write("                var y=document.forms[\"form1\"][\"password\"].value;\n");
      out.write("                if (y==null || y==\"\")\n");
      out.write("                {\n");
      out.write("                    alert(\"Please enter password\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <div id=\"topshade\"></div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("        <div id=\"top\"><img src=\"top.jpg\" width=\"100%\" height=\"150px\"></div>\n");
      out.write("        <div id=\"heading\"><center><font size=\"400%\">");
out.println("globoSoft");
      out.write("</font></center>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"ex\">\n");
      out.write("            <div id=\"lol\">\n");
      out.write("                <h1 font color=\"#800000\">Welcome to globoSoft</h1>\n");
      out.write("            </div></div>\n");
      out.write("        <div id=\"dleft\">\n");
      out.write("            <form name=\"form1\" method=\"post\" action=\"redirect.jsp\" onsubmit=\"return validateForm()\">\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                        Login\n");
      out.write("                        </td>\n");
      out.write("                <br/><br/>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                <table border=\"0\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>email:</td>\n");
      out.write("                        <td><input type=\"email\" name=\"email\" size=\"32\" placeholder=\"Enter email\"></td>    \n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password:</td>\n");
      out.write("                        <td><input type=\"password\" name=\"password\" size=\"32\" placeholder=\"Enter password\"></td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        \n");
      out.write("                    ");
Random rand = new Random();
                        int a = rand.nextInt(11);
                        int b = rand.nextInt(11);
                        int sum = a + b;
                        session.setAttribute("utest",sum);
                    
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            ");
out.println(a + "+" + b + "=");
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"text\" name=\"test\" size=\"10\" placeholder=\"Enter sum\"></input>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><center><input type=\"submit\" value=\"Submit\"></center></td>\n");
      out.write("                    <td><center><input type=\"reset\" value=\"Clear\"></center></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
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
