<%@ page language="java" contentType="text/html; charset=utf-8"
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

<h1> Game Editing Successful Applied</h1>

	 <form action="Controller" method="get"  id="mymenuBtns"  >
			 <input type ="submit" value="Back to Edit Page" name='toDiscountAdmin' />		 	 	
	</form>

<%

try {
	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		
  		for(int i=0;i<100;++i)
  		{
  			String getEditID=request.getParameter("edit"+i);
  	
  			if(getEditID!=null)
  			{		
  	  			String queryDisplay=("SELECT * FROM gametable WHERE gameid='"+i+"'");	
  	  			ResultSet rs= stmt.executeQuery(queryDisplay);
  	  	
  			   while(rs.next())      
	  			   {	int gameidvalue=rs.getInt(1);																						//            gender																										gendergame+i																					btn id gendergameedit1							description																											descriptionn+i																			btn desctiptionEdit1												discount																										discountvalue+i																		btn discountbtn101				                           price 																													priceofgame+i														priceedit1		
	  					out.println(" <div id=\"divv\">   <table> <tr><td>  <strong> "+rs.getString(2)+" </strong>  </td></tr>  <tr><td> Gender:  "+rs.getString(7)+" </td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"text\" name=\'gendergame"+gameidvalue+"\'  /> <input type=\"submit\" value=\"Edit Game Gender\" name='gendergameedit1' /> </form> </td> </tr>     <tr> <td> "+rs.getString(3)+" </td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"text\" name=\'descriptionn"+gameidvalue+"\'  /> <input type=\"submit\" value=\"Edit Game Description\" name='descriptionEdit1' /> </form></td> </tr>       <tr> <td> Discount:  "+rs.getInt(16)+"$ </td> <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"text\" name=\'discountvalue"+gameidvalue+"\'  /> <input type=\"submit\" value=\"Edit Discount\" name='discountbtn101' /></form> </td></tr>   <tr><td> Price:  "+rs.getInt(15)+"$ </td>  <td><form action='Controller' method=\"get\" id='myGameform' > <input type=\"text\" name=\'priceofgame"+gameidvalue+"\'  /> <input type=\"submit\" value=\"Edit Price\" name='priceedit1' /></form> </td>  </tr>  </table> </div>");   
	  			   }
			}
  		}  		  		
}
	
 catch (Exception e) {
System.out.println(e);

}

%>

<%! 
String discountEdit=null;
String priceEdit=null;
String genderEdit=null;
String descriptionEdit=null;


public String dicountEditMethod()
{	String dis=discountEdit;
	return dis;
}
public String priceEditMethod()
{	String pri=priceEdit;
	return pri;
}
public String genderEditMethod()
{	String gen=genderEdit;
	return gen;
}
public String descriptionEditMethod()
{	String desc=descriptionEdit;
	return desc;
}


%>

<%


//PART D 
//manipulation the GAMETABLE table accoridng to new inputs from PART C

	   	Class.forName("com.mysql.jdbc.Driver");
	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   	String databaseUser="root";
	   	String databasePass="";
	   
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
  		Statement stmt=con.createStatement();
 		
  		for(int i=0;i<150;i++)
  		{
  	 	   	String searchQueryy2=("SELECT * FROM gametable ");
  	 		ResultSet rs= stmt.executeQuery(searchQueryy2);

  			while(rs.next())
  			{	    
  				if(request.getParameter("discountvalue"+i)!=null)
		  			{
		  				discountEdit=request.getParameter("discountvalue"+i);
		  				System.out.println("this is a testttt" );
		  			}	
	  			if(request.getParameter("priceofgame"+i)!=null)
		  			{	
		  				priceEdit=request.getParameter("priceofgame"+i);
		  				System.out.println("this is a testttt" );
		  			}
	  			if(request.getParameter("gendergame"+i)!=null)
		  			{	
		  				genderEdit=request.getParameter("gendergame"+i);
		  				System.out.println("this is a testttt" );
		  			}
	  			if(request.getParameter("descriptionn"+i)!=null)
		  			{
		  				descriptionEdit=request.getParameter("descriptionn"+i);
		  				System.out.println("this is a testttt" );
		  			}	  		
  			}
 
		if( request.getParameter("priceofgame"+i)!=null )
		{	
			int priceEdit00=Integer.parseInt(priceEdit);
		 	ResultSet rs32= null;
		 	Statement st32=con.createStatement();
		 	PreparedStatement ps32= con.prepareStatement("UPDATE gametable SET  price='"+priceEdit00+"' WHERE gameid='"+i+"'; ");
		 	ps32.executeUpdate(); 
		}
		else if( request.getParameter("discountvalue"+i)!=null )
		{	
			int discountEdit00=Integer.parseInt(discountEdit);
		 	ResultSet rs32= null;
		 	Statement st32=con.createStatement();
		 	PreparedStatement ps32= con.prepareStatement("UPDATE gametable SET  discount='"+discountEdit00+"' WHERE gameid='"+i+"'; ");
		 	ps32.executeUpdate();	
		}
}
%>



</body>
</html>