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
<h1>Removing game</h1>


<%

try {
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		
  		String email= session.getAttribute("email").toString();
 	   	   
 		String searchQueryy2=("SELECT * FROM gametable ");
 		
 		ResultSet rs= stmt.executeQuery(searchQueryy2);
 		
		while(rs.next())
	{	
		String s111=request.getParameter("qwe"+rs.getString(2));
		
		if(s111!=null && s111.equalsIgnoreCase(rs.getString(2)))
		{	
		 	ResultSet rs332= null;
		 	Statement st332=con.createStatement();
		 	out.println("email "+email);
		 	out.println("rs: "+rs.getString(2));
		 	out.println("s111 "+s111);
		 	PreparedStatement ps332= con.prepareStatement("DELETE FROM carttable  WHERE email='"+email+"' AND gamename='"+rs.getString(2)+"'");
		 	ps332.executeUpdate();
			
		}break;
	}
	
	
	
	
	
	con.close();	  		
}	
  		

	
 catch (Exception e) {
System.out.println(e);

}

%>






</body>
</html>