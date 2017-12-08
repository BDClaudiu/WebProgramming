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

<style>
input[type=button] {
cursor: pointer}
input[type=submit] {
cursor: pointer;
width:100px;
}
input[type=text] {
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



td{width:250px;align:center; }
table, tr,td{color:white; background-color:#2D383A;border:1px solid white;align:center}


body{
	background-color:grey;
	
	overflow-y: scroll;
}


</style>





</head>
<body>
	 <form action="Controller" method="get"  id="mymenuBtns"  >
	
			 <input type ="submit" value="Main Menu" name='toLoginAdmin' />		 	 	
	
	</form>


<h1>Inventory</h1>


<% 
// removing from the inventory the cart quantities
/*  
try {
	
		Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   	   
	   	Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
  		Statement stmt2=con.createStatement();
		String cartTable=("SELECT * FROM carttable WHERE completed=1");
	   	String gameTable=("SELECT * FROM gametable");
	   //Queries execution goes here!!
		ResultSet rsCart= stmt.executeQuery(cartTable);
		ResultSet rsGame= stmt2.executeQuery(gameTable);   
	looptester:
		while(rsCart.next())
			 {	String cartGameName=rsCart.getString(2);
	
	while(rsGame.next())
					   
				   {
		 			
		 			String gameGameName=rsGame.getString(2);
	
		 			if(rsCart.getString(2).equalsIgnoreCase(rsGame.getString(2)))
				 		//if(rsCart.getString(2).equalsIgnoreCase(rsGame.getString(2))) 
				 	 	{ 
	
				 			PreparedStatement ps2= con.prepareStatement("UPDATE gametable SET inventory=inventory+'"+rsCart.getInt(5)+"' Where gamename='"+rsCart.getString(2)+"' ");
							ps2.executeUpdate();	
							continue looptester;
	 
				  		}	
						 			
		 			 } 
		 	 }
		
		
	   
} catch (Exception e) 

{
	System.out.println(e);	
}
*/	   
%>




<%
//PART A that is use for displaying all games and their quantity
try {
	
		Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   	   
	   	Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
		String searchQuery=("SELECT * FROM gametable ");
	   
	   //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
	   	   
		while(rs.next() )
			   
			   {
				
				int gameidvalue=rs.getInt(1);
				int gameiquantity=rs.getInt(18);
				out.println(" <div id=\"divv\"> <table \"> <tr> <td> "+rs.getString(2)+" </td><td> In stock: "+rs.getString(18)+" </td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"text\" name=\'gameQuantity"+gameidvalue+"\'  /> <input type=\"submit\" value=\"Update \" name='adminAddQuantity' /></form> </tr> </table> </div>   </form>");
			
			   }
			   
		con.close();
	   
} catch (Exception e) 

{
	System.out.println(e);	
}
		   
%>

<%


//PART B 
//Handles the event that occurs in PART A and updates the database GAMETABLE table accordingly
try {
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
	 	ResultSet rs2= null;
	 	Statement st2=con.createStatement();
  		
	 	Statement stmt=con.createStatement();
	 	
	 	
	for(int i=0;i<100;++i)
	  {		
	 		String	setInventoryQuantity=request.getParameter("gameQuantity"+i);
	 		Statement stmt66=con.createStatement();
			
	 		String searchInventory=("SELECT * FROM gametable WHERE gameid='"+i+"'");
			ResultSet ress= stmt66.executeQuery(searchInventory);
			
	  		if(setInventoryQuantity!=null && !setInventoryQuantity.isEmpty() ) 
	 	 	{ 		//need value here
	 			int finalInv=Integer.parseInt(setInventoryQuantity);
	 			PreparedStatement ps2= con.prepareStatement("UPDATE gametable SET inventory='"+finalInv+"' Where gameid='"+i+"' ");
				ps2.executeUpdate();		 	
	  		}
	  }
	}

 catch (Exception e) {
System.out.println(e);

}

%>





</body>
</html>