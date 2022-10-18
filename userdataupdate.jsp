  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
         String fname=request.getParameter("fname");
         String lname=request.getParameter("lname");
         String email=request.getParameter("email");
         String mobile=request.getParameter("mobile");
         String pwd=request.getParameter("password");
         String id=session.getAttribute("control").toString();
         String message = null; 
         Connection con=null;
        Class.forName("com.mysql.jdbc.Driver");
        try{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
        Statement stmt;
        stmt=con.createStatement();
        String sql="UPDATE userinfo SET firstname='"+fname+"',lastname='"+lname+"',email='"+email+"',mobile='"+mobile+"' WHERE control='"+id+"' AND password='"+pwd+"';";
        int res=stmt.executeUpdate(sql);
        if(res!=0)
  		{ 
                    message = "Data uploaded and saved into database";  
  		}
        }
        catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
            }
        request.setAttribute("Message", message);
        getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
      
  %>