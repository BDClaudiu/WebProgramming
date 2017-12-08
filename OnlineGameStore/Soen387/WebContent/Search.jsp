 
   <%@ page contentType="text/html; charset=utf-8" language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"
 %> 
    
    
    <% 
 
	if(session == null)
	out.println("<p>I am logged in</p>");

%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SEARCH NOT LOGGED</title>


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


</style>



</head>
<body>



<%

try {
	   Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   
	   
	   //get users imput from the search form
	   	String s1=request.getParameter("gamename");	
	   	String s2=request.getParameter("console");	
	   	String s300=request.getParameter("num_players");	
			int s3= Integer.parseInt(s300);		
		String s4=request.getParameter("coop");
		String s5=request.getParameter("gender");
		String s6=request.getParameter("publisher");
		
		String s700=request.getParameter("price");
		int s7= Integer.parseInt(s700);		
		String s800=request.getParameter("datee");
		int s8= Integer.parseInt(s800);
		
		//Main/base Query string
		String mainQuery=("SELECT * FROM gametable WHERE 1=1");
		
		
		//Additional  query conditions that will be added to the mainQuery 
		String gamenameADD=(" AND gamename='"+s1+"'");
		String consoleADD=(" AND console='"+s2+"'");
		String numOfPlayersADD=(" AND num_players='"+s3+"'");
		String coopADD=(" AND coop='"+s4+"'");
		String genderADD=(" AND gender='"+s5+"'");
		String publisherADD=(" AND publisher='"+s6+"'");
		String priceADD=(" AND price='"+s7+"'");
		String dateADD=(" AND release_date='"+s8+"'");
		
		
		//Overrides the additional query conditions if default values and adds empty string to the mainQuery 
		if(s1.equalsIgnoreCase("default"))
		{
			gamenameADD=("");
		}
		 if(s2.equalsIgnoreCase("default"))
		{
			consoleADD=("");	
		}
		 if(s3==0)
		{
			numOfPlayersADD=("");
		}
		
		 if(s4.equalsIgnoreCase("default"))
		{
			coopADD=("");
		}
		
		 if(s5.equalsIgnoreCase("default"))
		{
			genderADD=("");
		}
		 if(s6.equalsIgnoreCase("default"))
		{
			publisherADD=("");	
		}
		 if(s7==0)
			{
				priceADD=("");	
			}
		 else if(s7==10)
			{
			  priceADD=(" AND price <='"+s7+"'");	
			}
		 else if(s7==20)
			{
			  priceADD=(" AND price <='"+s7+"' AND price >10   ");	
			}
		 else if(s7==30)
			{
			  priceADD=(" AND price <='"+s7+"' AND price >20   ");	
			}
		 else if(s7==40)
			{
			  priceADD=(" AND price > \"40\"     ");	
			}
		
		 
		 if(s8==0)
			{
			 dateADD=("");	
			}
		 else if(s8==1990)
			{
			 dateADD=(" AND YEAR(release_date) <= \"1995\" ");	
			}
		 else if(s8==1995)
			{
			 dateADD=(" AND YEAR(release_date) >'"+s8+"' AND YEAR(release_date) <= \"2000\"  ");	
			}
		 else if(s8==2000)
			{
			 dateADD=("  AND YEAR(release_date) > '"+s8+"' AND YEAR(release_date) <= \"2005\"   ");	
			}
		 else if(s8==2005)
			{
			 dateADD=("  AND YEAR(release_date) > \"2005\"   AND YEAR(release_date) <= \"2010\"    ");	
			}
		 else if(s8==2010)
			{
			 dateADD=("  AND YEAR(release_date) > \"2010\"  AND YEAR(release_date) <= \"2015\"     ");	
			}
		 else if(s8==2015)
			{
			 dateADD=("  AND YEAR(release_date) > \"2015\" ");	
			}
		 
		 
		//Search query string
		String searchQuery=mainQuery+gamenameADD+consoleADD+numOfPlayersADD+coopADD+genderADD+publisherADD+priceADD+dateADD;
		
		
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
	   	Statement stmt=con.createStatement();
		  	   
		 //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
		
		while(rs.next())
			
		   {			
				int gameidvalue=rs.getInt(1);
				out.println("<form action='Controller' method=\"get\" id='myGameform' > <div id=\"divv\"> <table     \"> <tr> <td> "+rs.getString(2)+" </td> </tr>	<tr> <td ><img src="+rs.getString(11)+"></td> </tr> <tr> <td> Gender:  "+rs.getString(7)+" </td> </tr> <tr> <td>Price:  "+rs.getInt(15)+"$</td> <tr> <td>Date:  "+rs.getDate(8)+"</td> <tr> <td> <input type=\"hidden\" name=\'a"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Display Details\" name='searchDetails' /> </td></tr>  </table> </div>   </form>");
				
				 String s3000=request.getParameter("a"+gameidvalue);
		   }
		   con.close();
		   
		   
		  
			
} catch (Exception e) {
	System.out.println(e);
	
}







%>


</body>
</html>