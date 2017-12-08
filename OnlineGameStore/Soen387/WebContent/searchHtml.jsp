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
<meta charset="ISO-8859-1">
<title>Search Page</title>


<style>


input[type=button] {
cursor: pointer;
width:125px;
margin:auto;
position:relative;

}
input[type=submit] {
cursor: pointer;
width:125px;
margin:auto;
position:relative;

}
input[type=text] {
background-color:red;
color:white;
width:300px;
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


option{
margin-top:-10px;
}


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
padding:15px;
padding-left:20px;
}

#divv{
	margin:auto;
	
padding-top: 25px;
	width:900px;
	height:400px;
	background-color:#2D383A;
	border-radius: 25px;
	border: 2px solid red;
    
     
}

.boxSize{
width:90px;
}

table, tr,td{color:red; }
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
<body >

<%

out.println("<h2> Welcome    </h2>" + session.getAttribute("email"));
%>


<div>
	<h3>Search Box</h3>
</div>
<form action="Controller" method="get" >
   <div id="divv">
   
   <br/><br/>
  <input type="text" name="gamename" value="Default" placeholder="Search..." style="margin-left:300px">
   <label style="color:white; margin-left:350px; font-size:14px">Search by Name</label>
  
<table style="margin-left:45px; border: 2px solid red; background-color:black;border-radius: 25px; width:800px;"  >
<tr>
	
	<td>
		<label for="cosole" >Console</label><br/>
		<select id="console" name="console" class="boxSize">
			<option value="default">Default </option>
		  	<option value="nintendo" >Nintendo </option>
		  	<option value="nintendo wii">Nintendo wii</option>
		  	<option value="playstation 3">PlayStation 3</option>
		  	<option value="playstation 4">PlayStation 4</option>
		  	<option value="pc">PC</option>
		  	<option value="xbox">XBox</option>
		</select>
	</td>
	
	<td>
	<label for="num_players" >Players</label><br/>
		<select id="num_players" name="num_players" class="boxSize">
			<option value="0">Default </option>
		  	<option value="1">1</option>
		  	<option value="2">2</option>
		  	<option value="4">4</option>
		</select>
	</td>
	
	<td>
	<label for="Price" >Price</label><br/>
		<select id="price" name="price" class="boxSize">
			<option value="0">Default </option>
		  	<option value="10">10$ or less</option>
		  	<option value="20">10$ to 20$</option>
		  	<option value="30">30$ to 40$</option>
		  	<option value="40">40$ or more</option>
		  	
		</select>
	</td>
	
	
	<td>
	<label for="Date" >Date</label><br/>
		<select id="date" name="datee" class="boxSize">
			<option value="0">Default </option>
		  	<option value="1990">1995 and Earlier</option>
		  	<option value="1995">1995-2000</option>
		  	<option value="2000">2000-2005</option>
		  	<option value="2005">2005-2010</option>
		  	<option value="2010">2010-2015</option>
		  	<option value="2015">2015 and Later</option>
		</select>
	</td>
	
	
	<td>
	<label for="coop">Coop</label><br/>
		<select id="coop" name="coop" class="boxSize">
			<option value="default"  >	Default 	</option>
		  	<option value="yes" >	Yes			</option>
		  	<option value="no"  >	No			</option>
		</select>
	</td>
	
	<td>
	<label for="gender">Gender</label><br/>
		<select id="gender" name="gender" class="boxSize">
			<option value="default">Default </option>
		  	<option value="adventure">Adventure</option>
		  	<option value="action">Action</option>
		  	<option value="fighting">Fighting</option>
		  	<option value="strategy">Strategy</option>
		  	<option value="shooter">Shooter</option>
		  	<option value="puzzle">Puzzle</option>
		  	<option value="sports">Sports</option>
		  	<option value="racing">Racing</option>
		</select>
	</td>
	
	<td>
	<label for="publisher">Publisher</label><br/>
		<select id="publisher" name="publisher" class="boxSize">
			<option value="default">Default </option>
		  	<option value="nintendo">Nintendo</option>
		  	<option value="konami">Konami</option>
		  	<option value="blizzard">Blizzard</option>
		  	<option value="electronic art">Electronic Arts </option>
		  	<option value="capcom">Captom</option>
		  	<option value="atlus">Atlus</option>
		  	<option value="activision">Activision</option>
		  	<option value="atari">Atari</option>
		</select>
	</td>
	
</tr>

</table>
  
  <br/><br/><br/><br/><br/><br/>
  
  
<%
//fix this later on 
if(session.getAttribute("email")!=null && session.getAttribute("email")!="")
	{	out.println("I AM HERE");
		out.println("<input type=\"submit\" value=\"Search Games\" id=\"searchBtnlogin\" name=\"searchpagelogin\" style=\"margin-top:30px; margin-left:360px; \">");
	}
else
	{out.println("NOT HERE");
		out.println("<input type=\"submit\" value=\"Search Games\" id=\"searchBtn\" name=\"searchpage\" style=\"margin-top:30px; margin-left:360px; \">");
	}
%>
   
   
   </div>
</form>




</body>
</html>