<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>LoginJSP</title>
</head>


<body>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>
<%@ page import="javax.sql.*" %>

<% 
String password=request.getParameter("password");
String email=request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");

String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";

Connection con=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);

 Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM usertable WHERE email='"+email+"'");

if(rs.next())

{
	if(rs.getString(15).equals(password))
	{	
		out.println("Welcome "+rs.getString(2));
		
		if(session!=null)
		session.setAttribute("email",email);
		System.out.println("hello user" + request.getSession().getAttribute("email"));
		response.sendRedirect("mainLogedin.html");
		
		out.println("<a href=\"search.html\">Home</a>");
	}	
}

else
{
	out.println("Invalid Input");
	out.println("<a href=\"main.html\">Back</a>");
}

%>


</body>
</html>