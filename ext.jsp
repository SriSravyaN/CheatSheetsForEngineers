<%@ page import ="java.sql.*,java.util.*,java.io.*"%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
String sql="create database if not exists stud";
Statement s1=con.createStatement();
s1.executeUpdate(sql);
Statement s2=con.createStatement();
s2.executeUpdate("use stud");
Statement s3=con.createStatement();
s1.executeUpdate("create table if not exists student(name varchar(50),rno varchar(10))");
PreparedStatement pem=null;
String s4="Insert into student(name,rno) values(?,?)";
pem=con.prepareStatement(s4);
pem.setString(1,"p1p");
pem.setString(2,"213");
pem.executeUpdate();
Statement s5=con.createStatement();
ResultSet rs=s5.executeQuery("select * from student");
while(rs.next())
{
String r=rs.getString("name");
String s=rs.getString("rno");
out.println(r);
out.println(s);
}
con.close();
}
catch(Exception ex)
{
}
%>


