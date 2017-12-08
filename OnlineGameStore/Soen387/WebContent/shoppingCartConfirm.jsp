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


<form action="Controller" method="get"  id="mymenuBtns"  >
			 <input type ="submit" value="Main Menu" name='mainLogedIn' />		 	 	
	</form>

<%

try {
	
		String email= session.getAttribute("email").toString();
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   	
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 	
		ResultSet rs2= null;
	    Statement st2=con.createStatement();
  		
  		for(int i=0;i<150;++i)
  		{
  			String s300=request.getParameter("cart"+i);
  		
  			if(s300!=null)
  			{		
  				{  		
  					String addCartQuery=("SELECT * FROM gametable WHERE gameid= \'"+i+"\' ");	
  					rs2= st2.executeQuery(addCartQuery);
  						
  						while(rs2.next())			   
  						{	
  							PreparedStatement ps22= con.prepareStatement("INSERT INTO carttable (email,gamename,price,discount,quantity)  VALUES(?,?,?,?,?) ON DUPLICATE KEY UPDATE email=email,price=price,discount=discount,quantity=quantity+1");
  			  				ps22.setString(1,email);
  			  				ps22.setString(2,rs2.getString(2));
  			  				ps22.setInt(3,rs2.getInt(15));
  			  				ps22.setInt(4,rs2.getInt(16));
  			  				ps22.setInt(5,1);
  			 	 			ps22.executeUpdate();
  						} 		  		
				}
  			}
  		}
  }
	
 catch (Exception e) {
System.out.println(e);

}

%>


<h1>Game added to cart</h1>
</body>
</html>