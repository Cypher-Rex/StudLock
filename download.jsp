<%@page import="java.lang.String"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel=stylesheet type="text/css" href="css/style.css">
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
       <div>
           <img source="">
<%
String id = (String)session.getAttribute("control");
String file =request.getParameter("download");
 
String connectionURL = "jdbc:mysql://localhost:3306/stud";
String user = "root";
String pass = "root";
 
Connection con = null;
 out.print(id);
 out.print(file);

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    PreparedStatement ps = con.prepareStatement("select file from file where control=? && filename=? ;");
    ps.setString(1, id);
    ps.setString(2, file);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
    Blob blob = rs.getBlob("file");
    byte byteArray[] = blob.getBytes(1,(int)blob.length());
    response.setContentType("image/jpeg");
    OutputStream os = response.getOutputStream();
    os.write(byteArray);
    os.flush();
    os.close();
    out.print(id);
    out.print(file);
    }
%>
</div>
    </body>
    

