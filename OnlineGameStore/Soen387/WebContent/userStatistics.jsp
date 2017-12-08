<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"   
import="java.time.LocalDateTime"
import="java.sql.DriverManager.*"
import="javax.sql.*"    
%>




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
width:200px;
}



* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:100%; overflow:hidden; }

body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;	
}
.login { 

	position: absolute;
	
	width:800px;
	height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

label{
font-size:12px;

}


#btn{

}

td{width:200px}
table, tr,td{color:white; background-color:#2D383A;border:1px solid white}


body{
	background-color:grey;
	
	overflow-y: scroll;
}


</style>


</head>
<body>
<h1>User Statistics</h1>
<form action="Controller" method="get">
	
	<input type="submit" value="Main Menu" name="toLoginAdmin" />

</form>
<%
//------------------------------------------------------------------------
Class.forName("com.mysql.jdbc.Driver");
String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";

Connection con=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
//---------------------------------------------------------------------------------------
 Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM timetable2 ");

while(rs.next())
{		int counter=0;
		int userEmailStat=counter++;
		out.println("<form action='Controller' method=\"get\" id='myGameform' > <div id=\"divv\"> <table \">  <tr> <td> Email Address</td> <td> Login Time</td><td> Logout Time</td> <td> Purchase log</td> </tr>    <tr> <td>"+rs.getString(1)+ "</td>  <td> "+rs.getTimestamp(2)+ "</td> <td>"+rs.getTimestamp(3)+"</td> <td>"+rs.getTimestamp(4)+" </td> </tr>");
}
con.close();


%>






</body>
</html>