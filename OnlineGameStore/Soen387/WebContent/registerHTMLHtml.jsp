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
	<title>Registration Page</title>


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

input:focus { 
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); 
}

label{
	font-size:12px;
}

center{
	padding-top: 25px;
	width:450px;
	height:1150px;
	background-color:#2D383A;
	border-radius: 25px;
	border: 2px solid red;
	margin: auto;
    width: 50%;
 
}


table, tr,td{
	color:red; padding-top:5px;
}

table,th,td{	
	padding-bottom: 5px;
}

body{
	background-color:grey;
	font-weight:bold;
	overflow-y: scroll;
}


</style>

</head>

<body>
  
   <hr />
    <!-- Registration Form -->  
   <form action="Controller" method="get">
 <center>
    <table>
    
   <tr><td>REGISTRATION FORM</td></tr> 
			<tr>
				<td>First Name</td> <td><input type="text" name="firstname" required/></td>
			</tr>
		    <tr>
		    	<td>Last Name</td>  <td><input type="text" name="lastname" required/></td>
		    </tr>
			<tr>
				<td>Password</td> <td><input type="password" name="password" required/></td>
			</tr>
			<tr>
				<td>Confirm Password</td> <td><input type="password" name="password2" required/></td>
			</tr>
            <tr>
            	<td>Email Address</td>	<td><input type="text" name="email" required/></td>
            </tr>
            <tr>
            	<td>Address 1 </td>	<td><input type="text" name="address" required/></td>
            </tr>
            <tr>
            	<td>Address 2 </td>	<td><input type="text" name="address2" /></td>
            </tr>
			<tr>
				<td>City</td>	<td><input type="text" name="city" required/></td>
			</tr>
			<tr>
				<td>State </td>	<td><input type="text" name="state" required/></td>
			</tr>
			<tr>
				<td>Country</td>	<td><input type="text" name="country" required/></td>
			</tr>
			<tr>
				<td>ZIP Code</td>	<td><input required type="text" name="zip" /></td>
			</tr>
			<tr>
				<td>Credit Card Type</td>	<td><input type="text" name="credit_card_type" required/></td>
			</tr>
			<tr>
				<td>Credit Card Number</td>	<td><input type="text" name="credit_card_number" required/></td>
			</tr>
			<tr>
				<td>Credit Card CVV</td>	<td><input type="text" name="credit_card_cvv" required/></td>
			</tr>
			<tr>
				<td>Expiration Date</td><td><input type="text" name="credit_card_expiry" required/></td>
			</tr>
			
			
     </table>	<br />
     <!-- Submit and registration btns that will be redirected to the controller -->
     <input type="submit" value="Register" name="regbtn" />
     <input type="button" value="Cancel" onclick="location.href='mainHtml.jsp'"/>
    </center>
   </form>
            <br/> 
            <hr/>
           <div style="font-size:15px; ">Already Registered??  To Login <a href="loginHtml.jsp" style="font-color:white">Click Here</a></div>   
            <hr/>
                
</body>
</html>