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
width:200px;
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

td{width:200px}
table, tr,td{color:white; background-color:#2D383A;border:1px solid white}


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



  
   <hr />
      
   <form action="Controller" method="get">
 <center>
    <table>
    
   <tr><th style="align:center;">Add New Game</th></tr> 
			<tr>
				<td>Game Name</td> <td><input type="text" name="newAddGameName" required/></td>
			</tr>
		    <tr>
		    	<td>Game Description</td>  <td><input type="text" name="newAddGameDescription" /></td>
		    </tr>
		    <tr>
		    	<td>Console</td>  <td><input type="text" name="newAddConsole" /></td>
		    </tr>
			<tr>
				<td>Number of Players</td>	<td><input type="text" name="newAddNumberOfPlayers" required/></td>
			</tr>
            <tr>
		    	<td>Coop(yes/no)</td>  <td><input type="text" name="newAddCoop" required/></td>
		    </tr> 
		    <tr>
		    	<td>Gender</td>  <td><input type="text" name="newAddGender" required/></td>
		    </tr>
			<tr>
				<td>Release Date (YYYY-MM-DD)</td><td><input type="text" name="newAddReleaseDate" /></td>
			</tr>
			<tr>
		    	<td>Developer</td>  <td><input type="text" name="newAddDeveloper" /></td>
		    </tr>
		    <tr>
		    	<td>Publisher</td>  <td><input type="text" name="newAddPublisher" /></td>
		    </tr>
		    <tr>
		    	<td>Front Box Art </td>  <td><input type="text" name="newAddFrontBoxArt" /></td>
		    </tr>
		    <tr>
		    	<td>Back Box Art</td>  <td><input type="text" name="newAddBackBoxArt" /></td>
		    </tr>
		    <tr>
		    	<td>Game Logo</td>  <td><input type="text" name="newAddGameLogo" /></td>
		    </tr>
		    <tr>
		    	<td>Developer Logo</td>  <td><input type="text" name="newAddDeveloperLogo" /></td>
		    </tr>
			<tr>
				<td>Price</td>	<td><input type="text" name="newAddPrice" required/></td>
			</tr><tr>
				<td>Discount</td>	<td><input type="text" name="newAddDiscount" /></td>
			</tr>
			
     </table>	<br />
     <!-- Submit and registration btns that will be redirected to the controller -->
     <input type="submit" value="Register Game" name=toAddNewGame />
     <input type="button" value="Cancel" onclick="location.href='mainLogedinHtmlAdmin.jsp'"/>
    </center>
   </form>
            <br/> 
            <hr/>
         
<%
//Adding a new game 

        String m=null, mn=null;
        String 	sta1=request.getParameter("newAddGameName");
        String 	sta2=request.getParameter("newAddGameDescription");
        String 	sta3=request.getParameter("newAddConsole");
        
        String 	sta5=request.getParameter("newAddCoop");
		String 	sta6=request.getParameter("newAddGender");
		String 	sta7=request.getParameter("newAddDeveloper");
		String 	sta15=request.getParameter("newAddPublisher");
		
		String 	sta8=request.getParameter("newAddFrontBoxArt");
		String 	sta9=request.getParameter("newAddBackBoxArt");
		String 	sta13=request.getParameter("newAddGameLogo");
		String 	sta14=request.getParameter("newAddDeveloperLogo");
		
		//number of players default value
		long sta4=0;
		//price default value
		long sta10=0;
		//discount default value
		long sta11 =0;
		
		String sta114=request.getParameter("newAddNumberOfPlayers");
		if(sta114 != null && !sta114.isEmpty())
			{
				 sta4=Long.parseLong(sta114);
			}
		
		
		String sta100=request.getParameter("newAddPrice");
		if(sta100 != null && !sta100.isEmpty())
			{
				sta10=Long.parseLong(sta100);
			}
		
		String sta110=request.getParameter("newAddDiscount");
		if(sta110 != null && !sta110.isEmpty())
			{
				 sta11=Long.parseLong(sta110);
			}
		Date date= new Date(0);
		String 	sta12=request.getParameter("newAddReleaseDate");
		
		String 	getnewGame=request.getParameter("toAddNewGame");
		
	try {		
		
	    
//-------------------------------------------------------------------------------------------    
		   Class.forName("com.mysql.jdbc.Driver");
		   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
		   String databaseUser="root";
		   String databasePass="";
		   Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
//-------------------------------------------------------------------------------------------
		   
			 ResultSet rs= null;
	         Statement st=con.createStatement();
	         
	         PreparedStatement   ppps= con.prepareStatement("INSERT INTO gametable (gamename,game_description,console,num_players,coop,gender,release_date,developer,publisher,front_box_art,back_box_art,logo,developer_logo,price,discount)  VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	    																																																																				       
	           //1 Game name																														//
	           
			   ppps.setString(1,sta1);
	           //2 Game description
	           ppps.setString(2,sta2);
	           //3 Console
	           ppps.setString(3,sta3);
	           //4 Number of Players
	           ppps.setLong(4,sta4);
	           //5 Coop
	           ppps.setString(5,sta5);
	           //6 Gender
	           ppps.setString(6,sta6);
	           //7 Release date
	           ppps.setDate(7,date.valueOf(sta12));
	           //8 Developer
			   ppps.setString(8,sta7);
	           //9 Publisher
			   ppps.setString(9,sta15);
	           //10 Front Art
			   ppps.setString(10,sta8);
	           //11 Back Art
			   ppps.setString(11,sta9);
	           //12 Game logo
			   ppps.setString(12,sta13);
	           //13 Developer logo
			   ppps.setString(13,sta14);
			   //14 Price
			   ppps.setLong(14,sta10);
			   //15 Discount
			   ppps.setLong(15,sta11);
			   
			   
				   
			   
				   ppps.executeUpdate();
			   
	
		}catch (Exception e) 
			{
				System.out.println(e);	
			}		
			
		
%>


<h1>Special Sales Visibility</h1>
<%
// PART A
//Display the Specials to the Admin, on btn press he will be redirected to PART B
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
			   if(rs.getInt(16)!=0)
			   {	
				
				int gameidvalue=rs.getInt(1);	
				out.println(" <div id=\"divv\"> <table \"> <tr> <td> "+rs.getString(2)+" </td>  <td>Price:  "+rs.getInt(15)+"$</td> <td> Discount:  "+rs.getInt(16)+"$</td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"hidden\" name=\'public"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Set to Public View\" name='settopublic' /></form> </td>  <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"hidden\" name=\'private"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Set to User View\" name='settouser' /> </td></tr> </table> </div>   </form>");
			
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
  		 		
  		for(int i=0;i<100;++i)
  		{
  			String setPrivate=request.getParameter("private"+i);
  			String setPublic=request.getParameter("public"+i);
  			
  			if(setPrivate!=null)
  			{		
			 	PreparedStatement ps2= con.prepareStatement("UPDATE gametable SET visible='0' Where gameid='"+i+"' ");
			 	ps2.executeUpdate();
			}
  			if(setPublic!=null)
  			{		
			 	PreparedStatement ps2= con.prepareStatement("UPDATE gametable SET visible='1' Where gameid='"+i+"' ");
			 	ps2.executeUpdate();
			 	
			}

  		}
  		  		
}
	
 catch (Exception e) {
System.out.println(e);

}

%>
<br><br>
 <hr/>
<br>
<h1> Game list management</h1>

<%
//PART C displays all games avalaible with the option to edit them. Database manipulation handeled in PART D
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
				out.println(" <div id=\"divv\"> <table \"> <tr> <td> "+rs.getString(2)+" </td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"hidden\" name=\'edit"+gameidvalue+"\' value=\'"+gameidvalue+"\' /> <input type=\"submit\" value=\"Edit game\" name='adminEditGame' /></form> </tr> </table> </div>   </form>");
			
			   }
			   
		con.close();
	   
} catch (Exception e) 

{
	System.out.println(e);	
}
		   
%>


</body>
</html>