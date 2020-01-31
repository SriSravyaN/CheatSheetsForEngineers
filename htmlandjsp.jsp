<html>
<head>
<title>login</title>
<link rel="stylesheet" href="main.css">

 <%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="javax.servlet.RequestDispatcher" %>
<%! public  void myfun()
{
Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pooja","root",""); 
Statement stmt=con.createStatement(); 
String id=request.getParameter("uname"); 
String pass=request.getParameter("pwd");  
ResultSet rs=stmt.executeQuery("select * from users where email='"+id+"' and password='"+pass+"'"); 
if(rs.next()) 
{ 
         String site = new String("afterlogin.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
 }
 else
 { 
out.println("Login failed");
}
}
%>
  

</head>
<script type="text/javascript">
function myfun1()
{
<%= myfun()%>
}
<body bgcolor="95a5a6">

<center>
<div id="page1.0"> 
<img src="F:\logores.jpg" class="logo1"><br>
</center>
<form class="myform" action="" method="post">
<label><b>Username:</b><label><br>
<input type="text" class="inputvalues" name="uname"><br>
<label><b>Password:</b><label><br>
<input type="password" class="inputvalues" name="pwd"><br>
<input type="submit" id="login-btn" value="Login">
<label><b>Not Registered</b>

<input type="button" onclick="<%= myfun1()%>" value="Register" id="register-btn2" />


</form>
</div>

</body>
</html>