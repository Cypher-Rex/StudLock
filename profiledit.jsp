<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel=stylesheet type="text/css" href="css/style.css">
         <link rel=stylesheet type="text/css" href="css/bootstrap.css">
    </head>
<body>
<% 
String Fname=session.getAttribute("fname").toString();
String Lname=session.getAttribute("lname").toString();
String Mobile=session.getAttribute("mobile").toString();
String Control=session.getAttribute("control").toString();
String Email=session.getAttribute("email").toString();
%>
         <nav><div id="logo">Student Locker </div>
             <ul>
                <a href="home.jsp"><li>Home</li></a>
                <a href="file.jsp"><li>File Upload</li></a>
                <a href="get.jsp"><li>Download</li></a>
                 <a href="profiledit.jsp"><li>profile Edit</li></a>
                <a href="index.jsp"><li>Log Out</li></a>
             </ul>
         </nav>
   <br>
<form action="userdataupdate.jsp" method=post >
<H1  align=center>Profile Edit</H1>
   <hr>
<table align=center cellpadding=10px>
    <tr><td><label>First Name</label></td><td><input type=text name=fname class="form-control" required value=<%=Fname%> ></td></tr>
<tr><td><label>Last Name</label></td><td><input type=text name=lname class="form-control" required value=<%=Lname%>></td></tr>
<tr><td><label>Mobile No</label></td><td><input type=text name=mobile class="form-control" required value=<%=Mobile%>></td></tr>
<tr><td><label>Control No</label></td><td><input type=text name=control class="form-control" readonly value=<%=Control%> ></td></tr>
<tr><td><label>Email Id</label></td><td><input type=email name=email class="form-control" title="Enter Your Password" required value=<%=Email%>></td></tr>
<tr><td><label>Password</label></td><td><input type="password" name=password class="form-control" required ></td></tr>
<tr><td><label></label></td><td><input type=submit class="btn btn-primary"></td></tr>
</table>
</form>
</body>
</html>