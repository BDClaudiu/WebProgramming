<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
import="java.util.*"   
import="java.time.LocalDateTime"
    
%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>LoginJSP</title>
</head>


<body>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>
<%@ page import="javax.sql.*" %>



<%!
int counter=0;

public int countBlock(){
	
	int x=counter;
	return x;
}

%>

<% 


String password=request.getParameter("password");
String email=request.getParameter("email");

//------------------------------------------------------------------------
Class.forName("com.mysql.jdbc.Driver");
String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";

Connection con=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
//---------------------------------------------------------------------------------------
 Statement st=con.createStatement();

ResultSet rs=st.executeQuery("SELECT * FROM usertable WHERE email='"+email+"'");

if(rs.next())

{		
	//Admin Login
	if(rs.getString(15).equals(password) && rs.getInt(16)==1)
	{	
		out.println("Welcome Admin "+rs.getString(2));
		
		if(session!=null)
			
		session.setAttribute("email",email);
		System.out.println("hello user" + request.getSession().getAttribute("email"));
		response.sendRedirect("mainLogedinHtmlAdmin.jsp");
		out.println("<a href=\"mainLogedinHtmlAdmin.jsp\">Home</a>");
	}
	
	//Blocked account
	if (rs.getString(15).equals(password) && rs.getInt(16)==0 && rs.getInt(17)==1)
	{	counter=0;
		countBlock();
		Connection con2=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
		PreparedStatement ps2;
	    ResultSet rs2= null;
     	Statement st2=con2.createStatement();
		out.println("Account blocked for user with  email: "+ email);
		out.println("<a href=\"mainHtml.jsp\">Home</a>");
	}
	

	//Valid User login
	if (rs.getString(15).equals(password) && rs.getInt(16)==0 && rs.getInt(17)==0)
	{			counter=0;
				countBlock();
		Connection con2=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
		PreparedStatement ps2;
	    ResultSet rs2= null;
     	Statement st2=con2.createStatement();
        
        out.println("Welcome "+rs.getString(2));
		
		if(session!=null)
		session.setAttribute("email",email);
		
		ps2= con2.prepareStatement("INSERT INTO timetable2 (email,loginTime)  VALUES(?,now())");
		ps2.setString(1,email);
        ps2.executeUpdate();
        System.out.println(counter);
		System.out.println("hello user " + request.getSession().getAttribute("email"));
		response.sendRedirect("mainLogedinHtml.jsp");		
		out.println("<a href=\"mainLogedinHtml.jsp\">Home</a>");
		
	}
	
	//Invalid Login Password
	if(!rs.getString(15).equals(password))
	{	counter++;
		countBlock();
	
		out.println(counter);
		out.println("Invalid Input");
			

		if (counter==3)
		{
		Connection con2=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);
		PreparedStatement ps2;
	    ResultSet rs2= null;
	 	Statement st2=con2.createStatement();
	    	 		
		ps2= con2.prepareStatement("UPDATE usertable SET blocked=1 Where email='"+email+"' ");
		
	    ps2.executeUpdate();
	    
	    out.println("Account blocked for user with  email: "+ email);

		}
		out.println("<a href=\"mainHtml.jsp\">Back</a>");
		
	}
}


else
{
	out.println("Invalid Input");
	out.println("<a href=\"mainHtml.jsp\">Back</a>");
}

%>


</body>
</html>