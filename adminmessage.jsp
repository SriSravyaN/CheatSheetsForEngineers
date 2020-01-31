<html> 
<head>
<style>
body
{
background-color:linear-gradient(to right, #ff6699 16%, #ffffff 100%);
}

h1 {
    font-size: 40px;
   font-family:'Ultra',sans-serif;
   color :green
}
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}
</style>
</head>
 <body >
 <%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="javax.servlet.RequestDispatcher" %>
<% Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pooja","root",""); 
Statement stmt=con.createStatement(); 
String id=request.getParameter("username"); 
String pass=request.getParameter("email"); 
String mess=request.getParameter("message");  
ResultSet rs=stmt.executeQuery("select * from messages ");%>
<br> 
<center><h1>SUGGESTIONS FROM USERS</h1></center>
<table border=1 align=center style="text-align:center" >
          <tr>
             <th>USERNAME</th>
             <th>EMAIL</th>
             <th>MESSAGE</th>
          </tr>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("username") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("message") %></td>
            </tr>
           <% }%>
        </table><br>
</body>
<html>