<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile3.css">
<style>
tbody tr:nth-child(odd) {
  background-color: #f2f2f2
}

</style>
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
<a href="admin_manage_book2.jsp"> Manage books </a>  
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
<h4 style="color:#000080;margin:10px">Manage Categories</h4>
<hr>
<br>
<%Class.forName("com.mysql.jdbc.Driver");
	String urldb="jdbc:mysql://localhost/library";
	Connection conn=DriverManager.getConnection(urldb,"root","root");
	Statement stmt=conn.createStatement();
	String sql="select * from admin_book_cat;";
	ResultSet r=stmt.executeQuery(sql);
%>

<table border="1px solid black">
<thead><tr><td>ID</td><td>Name</td><td>Status</td><td>Activate</td><td>Inactivate</td><td>Edit</td><td>Delete</td></tr></thead>
<%
int i=1;
	while(r.next())
	{
		
		String s1=r.getString("id");
		String s2=r.getString("name");
		String s3=r.getString("status");
%>
<tr>
	<td>
		<%out.println(i);
		i++;
		%>
	</td>
	<td>
		<%out.println(s2);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<%out.println(s3);
		out.println("<BR>");
		 %>
	</td>
	<td>
		<a href="admin_man_cat_database.jsp?id=<%=s1%>">active</a>
	</td>
	<td>
		<a href="admin_man_cat_database.jsp?firstname=<%=s2%>">inactive</a>
	</td>
	<td>
		<a href="admin_edit_categories.jsp?name=<%=s2%>&id=<%=s1%>">Edit</a>
	</td>
	<td>
		<a href="admin_delete_categories.jsp?name=<%=s2%>&id=<%=s1%>">Delete</a>
	</td>
</tr>
<%} %>
	</table>
	
<%
	stmt.close();
	conn.close();
	 %>
</body>
</html>