<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<%@ page  language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"
 %>
 



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Main Page</title>
	

<style>
input[type=button] {
cursor: pointer}
input[type=submit] {
cursor: pointer}

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:100%; overflow:hidden; }

body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;	
}
.login { 
	position: absolute;
	top: 30%;
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
	width:400px;
	height:500px;
	background-color:#2D383A;
	border-radius: 25px;
	border: 2px solid red;
     
}


table, tr,td{color:red; padding-top:15px;}
table,th,td{padding-bottom: 5px;}

body{
	background-color:grey;
	font-weight:bold;
}


h3{
color:red;
}

</style>

	
	
</head>

<body>


<%


String username="";
if(session.getAttribute("email")!=null && session.getAttribute("email")!="")
{
	username=session.getAttribute("email").toString();
	out.println("<h2> Welcome </h2>" + username);
}	


%>



	 <form action="Controller" method="get" class="login" >
	 
		 <center >
		 
			 <table>
			 <tr><th>MAIN PAGE </th></tr>
				
				<tr>	<td> <input type="submit" value="Log Out"  name="toLogout"/> </td></tr>
				<tr>	<td> <input type="submit" value="Discounts" name="toDiscountUser" /> </td></tr>
				<tr>	<td> <input type="submit" value="Favorites" name="toFavorits" /> </td></tr>
				<tr>	<td> <input type="submit" value="Search"  name="toSearch"/> </td></tr>
				<tr>	<td> <input type="submit" value="Shopping Cart"  name="toUserCart"/> </td></tr>
				<tr>	<td> <input type="submit" value="Profile"  name="toUserProfile"/> </td></tr>
				
					 
			 </table>
		 </center>
		
		</form>






</body>
</html>