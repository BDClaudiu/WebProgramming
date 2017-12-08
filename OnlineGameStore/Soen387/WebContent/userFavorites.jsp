<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<%@ page  language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"
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

img{

	width:300px;
	height:400px;
}

.imgLogos{
	width:100px;
	height:50px;
	margin-left:35px;

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

label{
font-size:12px;

}


#btn{

}

#divv{
	
	width:600px;
	height:800px;
	float:left;

}

#myGameform{


	position: relative;


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


table, tr,td{color:white; padding-top:5px;background-color:#2D383A;border:2px solid red;}
table,th,td{padding-bottom: 5px;}

body{
	background-color:grey;
	font-weight:bold;
	overflow-y: scroll;
}

#mymenuBtns{


margin-right:0px;
position: fixed;
right:20px;

}



</style>


</head>
<body>


	 <form action="Controller" method="get"  id="mymenuBtns"  >
	
			 <input  type ="submit" value="Main Menu" name='mainLogedIn' />		 	 	
	
	</form>


<%

out.println("<h2> Welcome    </h2>" + session.getAttribute("email"));
%>



<%

try {
	
		String email= session.getAttribute("email").toString();
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   	
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		

			PreparedStatement ps2;
		    ResultSet rs2= null;
	     	Statement st2=con.createStatement();
  		
  		
  		for(int i=0;i<50;++i)
  		{
  			String s300=request.getParameter("id"+i);
  		
  			if(s300!=null)
  			{		
  				{  			
		  			ps2= con.prepareStatement("INSERT INTO userfavoritestable (email,gameid)  VALUES(?,?)");
		  			ps2.setString(1,email);
		  			ps2.setInt(2,i);
		  	        ps2.executeUpdate();
  				}
			}
  		} 		  		
}
	
 catch (Exception e) {
System.out.println(e);

}

%>


<h1>Favorites added!!!</h1>

</body>
</html>