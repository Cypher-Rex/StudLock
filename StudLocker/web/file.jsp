<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database</title>
 <link rel=stylesheet type="text/css" href="css/style.css">
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
    <%
        String id=(String)session.getAttribute("control");
    %>
    <nav><div id="logo">Student Locker </div>
             <ul>
                <a href="home.jsp"><li>Home</li></a>
                <a href="file.jsp"><li>File Upload</li></a>
                <a href="get.jsp"><li>Download</li></a>
                 <a href="profiledit.jsp"><li>Profile Edit</li></a>
                <a href="index.jsp"><li>Log Out</li></a>
             </ul>
    </nav>
    <center>
        <h1>File Upload </h1>
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Control No:</td>
                    <td><input type="text" name="control" value="<%=session.getAttribute("control")%>" size="50" readonly/></td>
                </tr>
                <tr>
                    <td>File Name: </td>
                    <td><input type="text" name="filename" size="50"/></td>
                </tr>
                <tr>
                    <td>Details: </td>
                    <td><input type="text" name="details" size="50"/></td>
                </tr>
                <tr>
                    <td>Upload Image : </td>
                    <td><input type="file" name="photo" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>    
                </tr>
            </table>
        </form>
    </center>
</body>
</html>