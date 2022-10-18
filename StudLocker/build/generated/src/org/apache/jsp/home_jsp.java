package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.OutputStream;
import java.sql.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("         <link rel=stylesheet type=\"text/css\" href=\"css/style.css\">\r\n");
      out.write("       <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("         <nav><div id=\"logo\">Student Locker </div>\r\n");
      out.write("             <ul>\r\n");
      out.write("                <a href=\"home.jsp\"><li>Home</li></a>\r\n");
      out.write("                <a href=\"file.jsp\"><li>File Upload</li></a>\r\n");
      out.write("                <a href=\"get.jsp\"><li>Download</li></a>\r\n");
      out.write("                 <a href=\"profiledit.jsp\"><li>Profile Edit</li></a>\r\n");
      out.write("                <a href=\"index.jsp\"><li>Log Out</li></a>\r\n");
      out.write("             </ul>\r\n");
      out.write("         </nav>\r\n");
      out.write("         <br><br>\r\n");
      out.write("       <div class=\"h1\" style=\"padding-left:100px\">MY Files</div>\r\n");
      out.write("       <hr>\r\n");
      out.write("       <form action=\"download.jsp\" method=\"post\">\r\n");
      out.write("         <div style=\"padding-left:50px; padding-right:50px;display: grid;grid-template-columns:repeat(5,1fr); \">\r\n");
      out.write("       ");

          String userid=(String)session.getAttribute("control");
             Connection con=null;
         ResultSet res;
        Class.forName("com.mysql.jdbc.Driver");
        try{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
        Statement stmt;
        stmt=con.createStatement();
        String sql="select * from file where control="+userid;
        res=stmt.executeQuery(sql);
           while(res.next())
           {
            String filename=res.getString("filename");
            out.print("<div id='file-block'><img src='img/file.png' height=100px ><br>"+filename+"<br><button class='btn btn-primary' name='download' value="+filename+">View</button></div>"); 
           }
        }
         catch(Exception e)
         {
            out.print(e);
         }
          
      out.write("\r\n");
      out.write("             </div>\r\n");
      out.write("       </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
