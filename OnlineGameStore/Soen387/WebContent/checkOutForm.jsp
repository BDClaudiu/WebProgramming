<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"

 %>    
<%@page import="assignment1.SendMail"%>
<%@page import="java.util.UUID"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

!




 <form action="Controller" method="get">
 <center>
    <table>
    
   <tr><td>Payment FORM </td></tr> 
			<tr>
				<td>First Name</td> <td><input type="text" name="pfirstname" required/></td>
			</tr>
		    <tr>
		    	<td>Last Name</td>  <td><input type="text" name="plastname" required/></td>
		    </tr>
			<tr>
				<td>Credit Card Type</td>	<td><input type="text" name="pcredit_card_type" required/></td>
			</tr>
			<tr>
				<td>Credit Card Number</td>	<td><input type="text" name="pcredit_card_number" required/></td>
			</tr>
			<tr>
				<td>Credit Card CVV</td>	<td><input type="text" name="pcredit_card_cvv" required/></td>
			</tr>
			<tr>
				<td>Expiration Date</td><td><input type="text" name="pcredit_card_expiry" required/></td>
			</tr>
			
			
     </table>	<br />
     <!-- Submit and registration btns that will be redirected to the controller -->
     <input type="submit" value="Place Order" name="CheckOutCartUser" />
     <input type="button" value="Cancel" onclick="location.href='mainLogedinHtml.jsp'"/>
    </center>
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
		String searchUser=("SELECT * FROM usertable WHERE email= \'"+email+"\'");
	   
		String 	t1=request.getParameter("pfirstname");
        String 	t2=request.getParameter("plastname");
        String 	t9=request.getParameter("pcredit_card_type");
		String t100=request.getParameter("pcredit_card_number");
		long t10=Long.parseLong(t100);
		
		String t110=request.getParameter("pcredit_card_cvv");
		long t11=Long.parseLong(t110);
		
		Date date= new Date(0);
		String 	t12=request.getParameter("pcredit_card_expiry");
		
		out.println(t1);
		out.println(t2);
		out.println(t9);
		out.println(t10);
		out.println(t11);
		out.println(t12);
	   //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchUser);
			
	
			while(rs.next())
				
			{
				if(t1.equalsIgnoreCase(rs.getString(2)) && t2.equalsIgnoreCase(rs.getString(3)) && t9.equalsIgnoreCase(rs.getString(10)) && t10==rs.getLong(11) && t11==rs.getInt(12) && date.valueOf(t12).equals(rs.getDate(13)))
				{	
					
				 	

					int gamePrice=0;
					int gameDiscount=0;
					int gameQuantity=0;
					double totalCost=0;
					totalCost+=(gamePrice-gameDiscount)*gameQuantity;
				   	Statement satmt=con.createStatement();
					  	   
					 //Queries execution goes here!!
					ResultSet rssr= satmt.executeQuery("SELECT * FROM carttable WHERE email = '" + email + "' AND purchaseID IS NULL ");
					String gamelist=" ";
					while(rssr.next())
						
					   {	gamelist+=rssr.getString(2)+" -------";	

						 gamePrice=rssr.getInt(3);
						 gameDiscount=rssr.getInt(4);
						 gameQuantity=rssr.getInt(5);
						 
						totalCost+=(gamePrice-gameDiscount)*gameQuantity;
						}
					
					
					SendMail emailObj = new SendMail(); 
					
					String cartid = UUID.randomUUID().toString();
					emailObj.checkoutSender(email, totalCost*0.05*0.0975, cartid, gamelist);
						ResultSet rs321= null;
					 	Statement st321=con.createStatement();
					 	Statement st3225=con.createStatement();
					 	PreparedStatement ps321= con.prepareStatement("UPDATE carttable SET completed='1', purchaseDate=now(), purchaseID='"+cartid+"' WHERE email='"+email+"'");
					 	ps321.executeUpdate();
					 						
					 	PreparedStatement pss01= con.prepareStatement("UPDATE  timetable2 SET purchaseTime=now()  WHERE logoutTime IS NULL AND email='"+email+"'");
					 	pss01.executeUpdate();	
						
					 	
				
				String redirectct="purchaseCompletedSuccesfully.jsp";
				response.sendRedirect(redirectct);
				}  		
				else{out.println("<h2>Invaid input</h2>");}
			}
			
			con.close();
} catch (Exception e) 

{
	System.out.println(e);	
}
		


%>



</body>
</html>