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

<%@ page language="java" %>
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
//------------------------------------------------------------------------
Class.forName("com.mysql.jdbc.Driver");
String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";

Connection con=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
//---------------------------------------------------------------------------------------

 Statement st=con.createStatement();
 String email=request.getParameter("passwordResetTxt");
 
 
ResultSet rs=st.executeQuery("SELECT * FROM usertable ");

while(rs.next())

{
	//fix this!!!
	if(rs.getString(4).equals(email))
		{	
			out.println("A email has been send to: "+email );
			
			
			//Continue this later
			/* Random rand = new Random();

			int  tempint = rand.nextInt(50) + 1;
			
			String tempstring="";
			String userTempPassoword=tempstring+tempint;
			ResultSet rs2= null;
		 	Statement st2=con.createStatement();
		 	PreparedStatement ps2= con.prepareStatement("UPDATE usertable SET password='"+userTempPassoword+"' Where email='"+email+"' ");
		 	ps2.executeUpdate();
			*/
			out.println("A email has been send to: "+email );
			out.println("Your temporary password is: +userTempPassoword+");
			
		}
// 	else if (!rs.next() && email!=rs.getString(4) ) out.println("Invalid Email!! ");
	continue;
	
}


%>

<br/>
<br/>
<br/>
<br/>


<a href="mainHtml.jsp">Main Page</a>








</body>
</html>