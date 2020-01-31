<html> 
 <body>

 <%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="javax.servlet.RequestDispatcher" %>
<% Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pooja","root",""); 
Statement stmt=con.createStatement(); 
String id=request.getParameter("uname"); 
String pass=request.getParameter("pwd");  
ResultSet rs=stmt.executeQuery("select * from users where email='"+id+"' and password='"+pass+"'"); 
if(rs.next()) 
{ 
         String redirectURL = "afterlogin.html";
        response.sendRedirect(redirectURL);
}
 else
 { 
out.println("Login failed");
}
%>
  
</body>
<html>