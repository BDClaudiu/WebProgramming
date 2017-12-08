<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page    
 
 errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"
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
width:80px;
cursor: pointer;}
input[type=submit] {
cursor: pointer;
width:80px;
}
input[type=text] {

width:200px;
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
<hr>
<h1>Reset Password Page</h1>


<h3>Please enter your email for password reset</h3>

<form action="Controller" method="get" >
  Email Address
  <br>
  	<input type="text" name="passwordResetTxt" >
  <br>
  	<input type="submit" value="Submit" name="passwordResetSubmit">
  	<input type="button" value="Cancel" onclick="location.href='mainHtml.jsp'"/>
</form>
<br/>
<hr>
<br/>
<h3>Please enter your email, temporary password and new password</h3>
<form action="Controller" method="get" >
  Email Address
  <br>
  	<input type="text" name="emailResetInput" >
  <br>
  Temporary Password
  <br>
  	<input type="text" name="KeyResetInput" >
  <br>
  New Password
  <br>
  	<input type="text" name="newPassResetInput" >
  <br>
  Confirm New Password
  <br>
  	<input type="text" name="newPassConfirmResetInput" >
  <br>
  	<input type="submit" value="Submit" name="passwordChangeTempSubmit">
  	<input type="button" value="Cancel" onclick="location.href='mainHtml.jsp'"/>
</form>
<br/><br/>

<hr>
<br/>
<a href="mainHtml.jsp">Return to Main Page</a>
</body>
</html>