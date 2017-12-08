<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
   
import="java.time.LocalDateTime"


%>
    
    

<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager.*" %>
<%@ page import="javax.sql.*" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% // import="java.util.*" if needed


String m=null, mn=null;
String 	sa1=request.getParameter("newaddress");
String 	sa2=request.getParameter("newaddress2");
String 	sa3=request.getParameter("newcity");
String 	sa4=request.getParameter("newzip");
String 	sa5=request.getParameter("newcountry");
String 	sa6=request.getParameter("newcredit_card_type");
String 	sa9=request.getParameter("newcredit_card_expiry");
String 	sa10=request.getParameter("newstate");
String 	sa11=request.getParameter("newpassword");
String 	sa12=request.getParameter("newpassword2");
String 	sa100=request.getParameter("newcredit_card_number");
String  sa110=request.getParameter("newcredit_card_cvv");


//------------------------------------------------------------------------
Class.forName("com.mysql.jdbc.Driver");
String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
String databaseUser="root";
String databasePass="";
Connection con2=DriverManager.getConnection(databaseUrl,databaseUser,databasePass);

//---------------------------------------------------------------------------------------

String username="";
if(session.getAttribute("email")!=null && session.getAttribute("email")!="")
{
	username=session.getAttribute("email").toString();
}
	if(sa6!=null && sa100 !=null && sa110!=null && sa9!=null)
	{	Date crediddate= new Date(0);
		long sa7=Long.parseLong(sa100);
		long sa8=Long.parseLong(sa110);
		
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET credit_card_type='"+sa6+"',credit_card_number='"+sa7+"', credit_card_cvv='"+sa8+"',credit_card_expiry='"+crediddate.valueOf(sa9)+"' Where email='"+username+"' ");

		ps2.executeUpdate();
	}


	if(sa11 !=null && sa12 !=null && sa11.equalsIgnoreCase(sa12) )	
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET password='"+sa11+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa1 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET address1='"+sa1+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa2 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET address2='"+sa2+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa3 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET city='"+sa3+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa4 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET zip='"+sa4+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa5 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET country='"+sa5+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}
	
	if(sa10 !=null)
	{
		ResultSet rs2= null;
		Statement st2=con2.createStatement();
		PreparedStatement ps2= con2.prepareStatement("UPDATE usertable SET state='"+sa10+"' Where email='"+username+"' ");
		ps2.executeUpdate();
	}



%>
<h1>I am here, profile handler!!!</h1> 


<form action="Controller" method="get">
	<input type="submit" value="Back to Profile" name="toUserProfile"/>
	
	<input type="submit" value="Main Menu" name="mainLogedIn" />

</form>

</body>
</html>