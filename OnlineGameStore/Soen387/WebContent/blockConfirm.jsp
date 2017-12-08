<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.time.LocalDateTime"

%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>
<%@ page import="javax.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
input[type=button] {
cursor: pointer}
input[type=submit] {
cursor: pointer;
width:170px;
}


* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:100%;  }

body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;	
}
.login { 
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width:300px;
	height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

input { 
	width: 100%; 
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: red;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}

input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }

label{
font-size:12px;

}

center{
	padding-top: 25px;
	width:300px;
	height:400px;
	background-color:#2D383A;
	border-radius: 25px;
	border: 2px solid red;
     
}


table, tr,td{color:white; padding-top:5px; border:1px solid black;}
table,th,td{padding-bottom: 5px;}

body{
	background-color:grey;
	font-weight:bold;
}






</style>

</head>



<body>
<form action="Controller" method="get">
	
	<input type="submit" value="Back" name="toUserManagement" />

</form>

<form action="Controller" method="get">
	
	<input type="submit" value="Main Menu" name="toLoginAdmin" />

</form>

<%!


int counter=0;
public int countBlock00()
	{	
		int x=counter;
		return x;
	}
%>

<%

//------------------------------------------------------------------------
Class.forName("com.mysql.jdbc.Driver");
String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";
Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);

//---------------------------------------------------------------------------------------
	
String iniQuery="SELECT * FROM usertable";
	Statement stmt00=con.createStatement();
	
	 //Queries execution goes here!!
	ResultSet rs00= stmt00.executeQuery(iniQuery);
while(rs00.next())
{	
	++counter;
}

for(int i=0;i<=countBlock00();i++)
{
	String s3000=request.getParameter("a"+i);
	String s4000=request.getParameter("b"+i);
	
	if(s3000!=null)
	{
		String searchQuery="SELECT * FROM usertable";
		
		Statement stmt=con.createStatement();
		   
		 //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
		
		 while(rs.next())
		 {
			 if(rs.getInt(1)==i && rs.getInt(17)!=0)
			 {
				 out.println("<br/><br/><h2>User is already blocked!!!</h2>");
				 break;
			 }	
			 
			 
		 else if(rs.getInt(1)==i && rs.getInt(17)!=1)
			 {
			 	ResultSet rs2= null;
			 	Statement st2=con.createStatement();
			 	PreparedStatement ps2= con.prepareStatement("UPDATE usertable SET blocked='1' Where userid='"+i+"' ");
			 	ps2.executeUpdate();
			 	out.println("<h1>User blocked</h1>");
			 	break;
			 }
			   
		 }
	counter=0;	
	}

	if(s4000!=null)
	{
		String searchQuery="SELECT * FROM usertable";
		
		Statement stmt=con.createStatement();
		   
		 //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
		
		 while(rs.next())
		{
			 if(rs.getInt(1)==i && rs.getInt(17)!=1)
				{
					 out.println("<br/><br/><h2>User is already unblocked!!!</h2>");
					 break;
				}	
				 else if(rs.getInt(1)==i && rs.getInt(17)!=0)	 
			 	{
				 	ResultSet rs2= null;
				 	Statement st2=con.createStatement();
				 	PreparedStatement ps2= con.prepareStatement("UPDATE usertable SET blocked='0' Where userid='"+i+"' ");
				 	ps2.executeUpdate();
				 	out.println("<h1>User unblocked</h1>");
		 		}
		 }
		 counter=0;
		 
	}	
}


%>
</body>
</html>