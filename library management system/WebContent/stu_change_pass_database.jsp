<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String oldp=request.getParameter("ooo1");
String newp=request.getParameter("nnn1");
String newcp=request.getParameter("nnnc1");
if(newcp.equals(newp))
{
String a=(String)session.getAttribute("oldp2");
String b=(String)session.getAttribute("oldu2");
if(a.equals(oldp))
{
	Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="update student_regi set password='"+newp+"' where username='"+b+"'";
	stmt.executeUpdate(sql);
	out.println("your password changed");
	stmt.close();
	conn.close();	
}
}
%>
</body>
</html>