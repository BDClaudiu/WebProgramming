<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
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

	
	
		 <input type="button" value="Main Menu" onclick="location.href='mainHtml.jsp'"/>		 	 	
	
	

<h1>Public Specials</h1>
<%

try {
		Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   	   
	   	Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
		String searchQuery=("SELECT * FROM gametable WHERE discount IS NOT NULL AND visible IS NOT NULL");
	   
	   //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
	   	   
		while(rs.next())
			   
			   {	
				out.println("<br/>");
				int gameidvalue=rs.getInt(1);	
				//<td> <input type=\"hidden\" name=\'a"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Display Details\" name='searchDetails' /> </td>
				out.println("<form action='Controller' method=\"get\" id='myGameform' > <div id=\"divv\"> <table     \"> <tr> <td> "+rs.getString(2)+" </td> </tr>	<tr> <td ><img src="+rs.getString(11)+"></td> </tr> <tr> <td> Gender:  "+rs.getString(7)+" </td> </tr> <tr> <td>Price:  "+rs.getInt(15)+"$</td></tr> <td> Discout:  "+rs.getInt(16)+"$</td></tr> <tr> <td> <input type=\"hidden\" name=\'a"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Display Details\" name='searchDetails' /> </td></tr>  </table> </div>   </form>");
			
			   }
			   
		con.close();
	   
} catch (Exception e) 

{
	System.out.println(e);	
}
		   
		   
		   
%>




</body>
</html>