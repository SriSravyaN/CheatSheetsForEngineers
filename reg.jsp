<html>
<body>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pooja","root","");
String u=request.getParameter("uname");
String p=request.getParameter("email");
String e=request.getParameter("pwd");
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from users where email='"+p+"' "); 
if(rs.next()) 
{
out.println("you have already registered check again");
}
else
{
PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?)");
ps.setString(1,u);
ps.setString(2,p);
ps.setString(3,e);
ps.executeUpdate();
String redirectURL = "afterlogin.html";
response.sendRedirect(redirectURL);
con.close();
}

%>
</body>
</html>

