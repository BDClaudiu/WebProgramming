 
   <%@ page contentType="text/html; charset=utf-8" language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
 %> 
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

try {
	   Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   
	   String s1=request.getParameter("gamename");	
		
	   Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
	   		out.println(s1);
      
       		//Queries here!!
		   Statement stmt=con.createStatement();
			  
		   ResultSet rs= stmt.executeQuery("SELECT * FROM gametable WHERE gamename='"+s1+"'");
		   
		   while(rs.next())
		   
		   {
			
				out.println(rs.getString(2));
				out.println(rs.getString(3));
				out.println(rs.getString(4));
				out.println(rs.getInt(5));	
				out.println(rs.getString(6));
				out.println(rs.getString(7));
				out.println( rs.getDate(8));
				out.println(rs.getString(9));
				out.println(rs.getString(10));
				out.println(rs.getString(15));
				
				out.println("<br/>");
			
		   }
		   
		   
		   con.close();
			
} catch (Exception e) {
	System.out.println(e);
	
}





out.println("I am your Search JSP!!!");


%>




</body>
</html>