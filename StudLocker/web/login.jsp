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
            String ctrl=request.getParameter("Control no");
            String pwd=request.getParameter("pwd");
            Connection con=null;
            ResultSet res;
        Class.forName("com.mysql.jdbc.Driver");
        try{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stud","root","root");
        Statement stmt;
        stmt=con.createStatement();
        String sql="Select * from userinfo where control='"+ctrl+"' AND password='"+pwd+"'";
        res=stmt.executeQuery(sql);
        if(res.next())
        { 
         String id=res.getString("control");
         String fname=res.getString("firstname");
         String lname=res.getString("lastname");
         String mobile=res.getString("mobile");
         String control=res.getString("control");
         String Email=res.getString("email");
         
         session.setAttribute("control",id);
         session.setAttribute("fname",fname);
         session.setAttribute("lname",lname);
         session.setAttribute("email",Email);
         session.setAttribute("mobile",mobile);
         session.setAttribute("control",control);
               
         response.sendRedirect("http://localhost:8080/StudLocker/home.jsp");
        }else
        {
        response.sendRedirect("../index.jsp");
        }
        }
        catch (SQLException ex) {
            ex.getMessage();
            ex.printStackTrace();
        }
            %>
    </body>
</html>
