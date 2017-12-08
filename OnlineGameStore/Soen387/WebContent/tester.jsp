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
</head>
<body>
<h1>Test Success</h1>


<%


//PART D 
//manipulation the GAMETABLE table accoridng to new inputs from PART C
try {
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		
  		for(int i=0;i<150;++i)
  		{
  			String genderEdit=request.getParameter("gendergame"+i);
  			String descriptionEdit=request.getParameter("descriptionn"+i);
  			
  			
  			String discountEdit0=request.getParameter("discountvalue"+i);
  			int discountEdit=Integer.parseInt(discountEdit0);
  			
  			String priceEdit0=request.getParameter("priceofgame"+i);
  			int priceEdit=Integer.parseInt(priceEdit0);
  			
  			out.println("<h1>WORKS </h1>"+genderEdit);
  			out.println("<h1>WORKS </h1>"+descriptionEdit);
  			out.println("<h1>WORKS </h1>"+discountEdit0);
  			out.println("<h1>WORKS </h1>"+priceEdit0);
  			if(genderEdit!=null)
  			{		
  	  		out.println("<h1>WORKS </h1>"+genderEdit);
  			}
  			
  			if(descriptionEdit!=null)
  			{		
  	  		out.println("<h1>WORKS </h1>"+descriptionEdit);
  			}
  			
  			if(discountEdit0!=null)
  			{		
  	  		out.println("<h1>WORKS </h1>"+discountEdit0);
  			}
  			
  			if(priceEdit0!=null)
  			{		
  	  		out.println("<h1>WORKS </h1>"+priceEdit0);
  			}
  		}
  		  		
}
	
 catch (Exception e) {
System.out.println(e);

}

%>






</body>
</html>