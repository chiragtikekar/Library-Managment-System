<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile2.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>  
<nav>  
<ul>  
<li>  
<a href="admin_dashboard.jsp"> Dashboard </a>  
</li>  
<li>  
<a href="admin_add_categories.jsp"> Add Categories </a>  
</li>  
<li>  
<a href="admin_manage_categories.jsp"> Manage Categories </a>  
</li>  
<li>  
<a href="admin_add_books.jsp"> Add Books </a>  
</li>  
<li>  
<a href="admin_manage_book2.jsp"> Manage Books </a>  
</li>
<li>  
<a href="admin_manage_books.jsp"> Manage Issued Books </a>  
</li>
<li>  
<a href="admin_issued_books.jsp"> Issue New Books </a>  
</li>
<li>  
<a href="admin_manage_registered_students.jsp"> Manage Registered Students </a>  
</li>  
<li>  
<a href="admin_change_password.jsp"> Change Password </a>  
</li>
   
</ul>  
</nav>  
</header>  
<br>
<h4 style="color:#000080;margin:10px">Add Books</h4>
<hr>
<br>
<%Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select name from admin_book_cat;";
	ResultSet r=stmt.executeQuery(sql);
%>
<fieldset>
<legend>
Book Info:
</legend>
<form action="admin_add_book_database.jsp" method="post">
Book Name:
<br>
<input type="text" name="bn">
<br><br>
Category:
<br>
<select name="book_c" value="select" placeholder="select">
 <option value="none" selected disabled hidden>Select Category</option>
<%
while(r.next())
{
String s=r.getString("name");	
%>
<option><%=s%></option>
<%}%>
</select>
<br><br>
Author:
<br>
<input type="text" name="an">
<br><br>
ISBN No:
<br>
<input type="text" name="isbn">
<br><br>
Price:
<br>
<input type="text" name="pr">
<br><br>
<input type="submit" value="Add Book">
</form>
</fieldset>
</body>
</html>