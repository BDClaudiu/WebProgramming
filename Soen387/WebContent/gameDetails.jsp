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
</head>
<body>



<%
out.println("welcome to the detail page!!");
try {
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		
  		out.println("hi");
  		
  		
  		String s300="1";
  		
  		 s300=request.getParameter("tableid");
  		
  		 int gameIdVariable= Integer.parseInt(s300);		
  		System.out.println("Here comes the string");
  		// out.println(s300);
  		
  		String queryDisplay=("SELECT * FROM gametable WHERE gameid='"+gameIdVariable+"'");
  		ResultSet rs= stmt.executeQuery(queryDisplay);
  		
  	
		   while(rs.next())
			      
		   {	   
				out.println(" <div> <table border=\'1\' style=\"  width:400px; height:200px;   \"> <tr> <td>Title:  "+rs.getString(2)+" </td> </tr>	<tr> <td>Image goes here</td> </tr> <tr> <td> Gender:  "+rs.getString(7)+" </td> </tr> <tr> <td> GameDescription:  "+rs.getString(3)+" </td> </tr> <tr> <td> Console:  "+rs.getString(4)+" </td> </tr> <tr> <td> Coop:  "+rs.getString(6)+" </td> </tr> </table> </div>");   
		   }

	   

}



	
 catch (Exception e) {
System.out.println(e);

}





%>

<table>









</table>





</body>
</html>