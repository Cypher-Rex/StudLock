
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
     <%
        String fname=request.getParameter("Fname");
        String lname=request.getParameter("Lname");
        String email=request.getParameter("Email");
        String cont=request.getParameter("Control");
        String mobile=request.getParameter("Mobile");
        String pwd=request.getParameter("pwd");
        String pwdr=request.getParameter("pwdr");
        String message=null;
        Connection con=null;
        Class.forName("com.mysql.jdbc.Driver");
        try{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
        Statement stmt;
        stmt=con.createStatement();
        String sql="insert into userinfo (userid,firstname,lastname,control,email,mobile,password) values ('"+cont+"','"+fname+"','"+lname+"','"+cont+"','"+email+"','"+mobile+"','"+pwd+"')" ;
        int RowCount=stmt.executeUpdate(sql);
        if(RowCount > 0)
        {
           message="Successfully Registered";
        }
        }
        catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        }
        
        request.setAttribute("Message", message);
        getServletContext().getRequestDispatcher("/Message1.jsp").forward(request, response);
       
%>
    </body>
</html>
