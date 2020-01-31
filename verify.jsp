<scripttype="text/javascript">
<% String name=request.getParameter("password");
String name2=request.getParameter("confirmpassword");
if(name!=name2)
{
confirm("password mismatch try again");
}
%>