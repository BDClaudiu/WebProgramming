<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
input[type=button] {
cursor: pointer;
width:200px;}
input[type=submit] {
cursor: pointer;
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
	width:350px;
	height:1350px;
	background-color:#2D383A;
	border-radius: 25px;
	border: 2px solid red;
	margin: auto;
    
 
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


<h1>I am HERE!!!!!</h1>

 
   <hr />
  <center> 
 <table>
		<tr>
			<td>	
				<form action="Controller" method="get">
					Password<input type="password" name="newpassword"/>
					Confirm Password<input type="password" name="newpassword2"/>
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					Address 1 <input type="text" name="newaddress" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					Address 2 <input type="text" name="newaddress2" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					City<input type="text" name="newcity" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					State <input type="text" name="newstate" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					Country<input type="text" name="newcountry" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		<tr>
			<td>	
				<form action="Controller" method="get">
					ZIP Code<input type="text" name="newzip" />
					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
			
		<tr>
			<td>	
				<form action="Controller" method="get">
					Credit Card Type <input type="text" name="newcredit_card_type"/>
					Credit Card Number <input type="text" name="newcredit_card_number" />
					Credit Card CVV<input type="text" name="newcredit_card_cvv" />
					Expiration Date<input type="text" name="newcredit_card_expiry" />

					<input type="submit" value="Change" name="changeBtn"/>
				</form>
			</td>
		</tr>
		
</table>
   
</center>
	           
<input type="button" style=" margin-left:570px;"value="Back" onclick="location.href='mainLogedinHtml.jsp'"/>

</body>
</html>