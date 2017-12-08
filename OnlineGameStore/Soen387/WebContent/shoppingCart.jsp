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


<style>
input[type=button] {
cursor: pointer}
input[type=submit] {
cursor: pointer;
width:125px;
}
input[type=text] {
text-align:center;
width:50px;
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
	
	width:800px;
	height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

label{
font-size:12px;

}


#btn{

}

td{width:150px;height:20px; text-align:center;}
table, tr,td{color:white;text-align:center; background-color:#2D383A;border:1px solid white}


body{
	background-color:grey;
	
	overflow-y: scroll;
}


</style>


</head>
<body>


<h1>Shopping Cart</h1>


<%

try {	
	   String email= session.getAttribute("email").toString();
	   Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   	   
	   	Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
		String searchQuery=("SELECT * FROM carttable WHERE email= \'"+email+"\'");
	   
		int gamePrice=0;
		int gameDiscount=0;
		int gameQuantity=0;
		double totalCost=0;
		
	   //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);

		out.println(" <form action='Controller' method=\"get\" id='cartpage' > <div id=\"divv\"> <table \"> <tr> <td> Game name</td> <td> Price</td><td> Discount</td> <td> Quantity</td> </tr>");
		while(rs.next())
	{
		if(rs.getInt(6)==0)
		{ 
			out.println(" <tr> <td>"+rs.getString(2)+ "</td>  <td> "+rs.getInt(3)+ "</td> <td>"+rs.getInt(4)+"</td> <td>"+rs.getInt(5)+" </td> <td> <form action=\"Controller\" method=\"get\"> <input type=\"text\" value=\"1\" name=\'abc"+rs.getString(2)+"\'  ><input type=\"submit\" value=\"Change Quantity \" name=\"toChangeQuantity\" /> </form> </td> <td> <form action=\"Controller\" method=\"get\"><input type=\"hidden\" name=\'qwe"+rs.getString(2)+"\' value=\'"+rs.getString(2)+"\' /> <input type=\"submit\" value=\"Remove\" name='toRemoveCart' /> </form></td>  </tr>   ");
			out.println("");
			gamePrice=rs.getInt(3);
			gameDiscount=rs.getInt(4);
			gameQuantity=rs.getInt(5);
		
			totalCost+=(gamePrice-gameDiscount)*gameQuantity;
		}	
	} 
		
		out.println("</table>  </form>");	
		out.println("<br><br><br>");
		out.println("<table> <tr><td>  Cost</td><td>"+totalCost+" $</td></tr> <tr><td> QST 9.75%</td><td>"+totalCost*0.0975+" $</td></tr> <tr><td> GST 5%</td><td>"+totalCost*0.05+" $</td></tr> <tr><td>Total Amount </td><td>"+(totalCost+totalCost*0.0975+totalCost*0.05)+" $</td></tr> </table> "); 
	
 		
		String ss22=request.getParameter("clearCart");
		//out.print(ss22);
		if(ss22!=null)
		{	
		 	ResultSet rs321= null;
		 	Statement st321=con.createStatement();
		 	PreparedStatement ps321= con.prepareStatement("DELETE FROM carttable  WHERE email='"+email+"' ");
		 	ps321.executeUpdate();	
			//out.println(ss22);
			
		}


			con.close();
		
	   
} catch (Exception e) 

{
	System.out.println(e);	
}
		   
		      
%>

<br/><br/>
	 <form action="Controller" method="get"  id="mymenuBtns"  >
			<input type ="submit"  style="width:200px;" value="Continue  Main Menu" name='mainLogedIn' />		 	 	
	 		<input type ="submit"  style="width:200px;" value="Clear Cart" name='clearCart' />
	 		<input type ="submit"  style="width:200px;" value="CheckOut" name='CheckOutCartUser' />	 	
	</form>


</body>
</html>