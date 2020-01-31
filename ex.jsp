<html>
<body>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pooja","root","");
String u=request.getParameter("name");
String p=request.getParameter("email");
String e=request.getParameter("subject");
Statement stmt=con.createStatement();  
PreparedStatement ps=con.prepareStatement("insert into messages values(?,?,?)");
ps.setString(1,u);
ps.setString(2,p);
ps.setString(3,e);
ps.executeUpdate();
out.println("your message was sent thank you for your suggestions");
String redirectURL = "home.html";
response.sendRedirect(redirectURL);
con.close();


%>
</body>
</html>

