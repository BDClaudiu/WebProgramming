 
   <%@ page contentType="text/html; charset=utf-8" language="java"  errorPage=""
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






</style>



</head>
<body>



<%

try {
	   Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	   
	   
	   //get users imput from the search form
	   	String s1=request.getParameter("gamename");	
	   	String s2=request.getParameter("console");	
	   	String s300=request.getParameter("num_players");	
			int s3= Integer.parseInt(s300);		
		String s4=request.getParameter("coop");
		String s5=request.getParameter("gender");
		String s6=request.getParameter("publisher");
		
		
		
		
		//Main/base Query string
		String mainQuery=("SELECT * FROM gametable WHERE 1=1");
		
		
		//Additional  query conditions that will be added to the mainQuery 
		String gamenameADD=(" AND gamename='"+s1+"'");
		String consoleADD=(" AND console='"+s2+"'");
		String numOfPlayersADD=(" AND num_players='"+s3+"'");
		String coopADD=(" AND coop='"+s4+"'");
		String genderADD=(" AND gender='"+s5+"'");
		String publisherADD=(" AND publisher='"+s6+"'");
		
		//Overrides the additional query conditions if default values and adds empty string to the mainQuery 
		if(s1.equalsIgnoreCase("default"))
		{
			gamenameADD=("");
		}
		 if(s2.equalsIgnoreCase("default"))
		{
			consoleADD=("");	
		}
		 if(s3==0)
		{
			numOfPlayersADD=("");
		}
		
		 if(s4.equalsIgnoreCase("default"))
		{
			coopADD=("");
		}
		
		 if(s5.equalsIgnoreCase("default"))
		{
			genderADD=("");
		}
		 if(s6.equalsIgnoreCase("default"))
		{
			publisherADD=("");	
		}
		
		//Search query string
		String searchQuery=mainQuery+gamenameADD+consoleADD+numOfPlayersADD+coopADD+genderADD+publisherADD;
		
		//just to see how the query looks line
		out.println("Query string is: ["+searchQuery+"]<br/><br/><br/>");
	   	
		Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
	   		
      
       		
		   Statement stmt=con.createStatement();
		  	Blob img=null;
		   byte[] imgData=null;
		   
		   
		 //Queries execution goes here!!
		ResultSet rs= stmt.executeQuery(searchQuery);
		
		   while(rs.next())
			
			   
		   {	
			
					/*
				response.getContentType();
				response.setContentType("image/jpg");
				img =rs.getBlob(11);
				imgData=img.getBytes(1, (int) img.length());
				String imgDataBase64= new String(Base64.getEncoder().encode(imgData));

				ServletOutputStream o=response.getOutputStream();
				o.write(imgData);
				o.flush();
				o.close();
				
				out.println("<img src='data:image/jpg;base64,<s:propriety value='"+imgData+"'/>' height='25px' weight='25px'>");
			
				
				System.out.println(imgData);
				
				out.println(rs.getString(2));
				out.println(rs.getString(3));
				out.println(rs.getString(4));
				out.println(rs.getInt(5));	
				out.println(rs.getString(6));
				out.println(rs.getString(7));
				out.println( rs.getDate(8));
				out.println(rs.getString(9));
				out.println(rs.getString(10));
				
				out.println(rs.getBlob(11));
				out.println(rs.getString(15));
			*/
		
			
				out.println("<br/>");
				int gameidvalue=rs.getInt(1);
				
				
				// System.out.println(" <div> <table  data-id=\'"+gameidvalue +"\' border=\'1\' style=\"  width:400px; height:200px;   \"> <tr> <td> <a href='gameDetails.jsp'> Title:   "+rs.getString(2)+"</a> </td> </tr>	<tr> <td>Image goes here</td> </tr> <tr> <td> Gender:  "+rs.getString(7)+" </td> </tr> </table> </div>");
				out.println("<form action=\"reg.jsp\" method=\"post\"> <div> <table  data-id=\'"+gameidvalue +"\' border=\'1\' style=\"  width:400px; height:200px;   \"> <tr> <td> <a href='gameDetails.jsp'> Title:   "+rs.getString(2)+"</a> </td> </tr>	<tr> <td>Image goes here</td> </tr> <tr> <td> Gender:  "+rs.getString(7)+" </td> </tr> </table> </div> </form>");
				//out.println("<input type=\"hidden\" name=\"tableid\" value=\'"+gameidvalue +"\'>");
				//out.println("<input type=\'text\' onclick='gameDetails.jsp' value= \" Game details\" ");
				//sta.push(gameidvalue);
		   }
		   con.close();
		   
		   
		   
		  
			
} catch (Exception e) {
	System.out.println(e);
	
}

out.println(" <br/ ><br/ >I am your Search JSP Page!!!");


%>


</body>
</html>