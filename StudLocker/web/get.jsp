<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel=stylesheet type="text/css" href="css/style.css">
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
         <nav><div id="logo">Student Locker </div>
             <ul>
                <a href="home.jsp"><li>Home</li></a>
                <a href="file.jsp"><li>File Upload</li></a>
                <a href="get.jsp"><li>Download</li></a>
                 <a href="profiledit.jsp"><li>Profile Edit</li></a>
                <a href="index.jsp"><li>Log Out</li></a>
             </ul>
         </nav>
         <br><br>
       <div class="h1" style="padding-left:100px">MY Files</div>
       <hr>
       <form action="img.jsp" method="post">
         <div style="padding-left:50px; padding-right:50px;display: grid;grid-template-columns:repeat(5,1fr); ">
       <%
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
            out.print("<div id='file-block'><img src='img/file.png' height=100px ><br>"+filename+"<br><button class='btn btn-primary' name='download' value="+filename+">Download</button></div>"); 
           }
        }
         catch(Exception e)
         {
            out.print(e);
         }
          %>
             </div>
       </form>
    </body>
</html>
