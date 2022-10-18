<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
       <link rel=stylesheet type="text/css" href="css/style.css">
       <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital@1&family=Montserrat:wght@300&display=swap" rel="stylesheet">
       
    </head>
    <body id="body">
        <%
            String message="";
        try{
        String login="";
        login=request.getParameter("login");
        if(login.equals("fail"))
        {
            message="Control no/Password invalid";
        }
     }
        catch(Exception e)
        {
        }
        %>
        <header>
            <nav><div id="logo" class="nav">Student Locker </div></nav>
            <div id="part">
            <div id="index-body"></div>
            <div id="login-div">
                <h1 class="header">Login</h1>
                <form action="login.jsp" method="post">
                <table class="login-table">
                    <tr><td><label class="login-label">Control no</label></td><td><input type="text" class="login-input" name="Control no"
                                                                                         title="Enter 7 Digit Control No" pattern="[0-9]{7}" required="required"></td></tr>
                    <tr><td><label class="login-label">Password</label></td><td><input type="password" class="login-input" name="pwd" 
                                                                                       title="Enter Your Password" pattern="[]{4-10}" required="required"> </td></tr>
        <tr><td style="color: red;font-weight: bolder"><%=message%></td><td><input type="submit" value="Sign in" class="login-btn"><a href="registration.jsp"  value="Sign up" class="login-btn">Sign up</a><td></tr>
        <tr><td></td><td><a href="forgetPassword.jsp">Forget Password?</a></td></tr>
                </table>
            </form>
            </div>
            </div>
        </header>
    </body>
</html>
