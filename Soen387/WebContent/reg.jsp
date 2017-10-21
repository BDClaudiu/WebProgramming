<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage=""
import="java.text.SimpleDateFormat"
import="java.util.Calendar"
import="java.sql.*"
import="java.lang.*"
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>REGJSP</title>
<style type="text/css">

.right{
		text-align: right;
	  }
	
</style>
</head>

<body>
<%@ page language="java" %>
  
<%
        String m=null, mn=null;
        String 	s1=request.getParameter("firstname");
        String 	s2=request.getParameter("lastname");
        String 	s3=request.getParameter("email");
        String 	s4=request.getParameter("address");
        String 	s5=request.getParameter("address2");
		String 	s6=request.getParameter("city");
		String 	s7=request.getParameter("zip");
		String 	s8=request.getParameter("country");
		String 	s9=request.getParameter("credit_card_type");
		
		String s100=request.getParameter("credit_card_number");
		long s10=Long.parseLong(s100);
		// int 	s10=Integer.parseInt(request.getParameter("credit_card_number"));
		String s110=request.getParameter("credit_card_cvv");
		long s11=Long.parseLong(s110);
		//int s11=Integer.parseInt(request.getParameter("credit_card_cvv"));
		
		Date date= new Date(0);
		String 	s12=request.getParameter("credit_card_expiry");
				
		String 	s13=request.getParameter("state");
		String 	s14=request.getParameter("password");
		String s15=request.getParameter("password2");
		
		session.setAttribute("email", s3);
			
        PreparedStatement ps;
     
        ResultSet rs= null;
        
      System.out.println(s1 +" "+s12+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+s8+" "+s9+" "+s10+" "+s11+" "+s12+" "+s13+" "+s14);  
      System.out.println("my name is: "+ s1);
	
	   Class.forName("com.mysql.jdbc.Driver");
	   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
	   String databaseUser="root";
	   String databasePass="";
	 
	   
	   Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
	   		
         Statement st=con.createStatement();
         
          ps= con.prepareStatement("INSERT INTO usertable (firstname,lastname,email,address1,address2,city,zip,country,credit_card_type,credit_card_number,credit_card_cvv,credit_card_expiry,state,password)  VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
		   ps.setString(1,s1);
           ps.setString(2,s2);
           ps.setString(3,s3);
           ps.setString(4,s4);
           ps.setString(5,s5);
           ps.setString(6,s6);
		   ps.setString(7,s7);
		   ps.setString(8,s8);
		   ps.setString(9,s9);
		   ps.setLong(10,s10);
		   ps.setLong(11,s11);
		   ps.setDate(12,date.valueOf(s12));
		   ps.setString(13,s13);
		   ps.setString(14,s14);
		   
		   
               int insertResult = ps.executeUpdate();
             if (insertResult!=0)
            {
                 out.println("Successfully registered");
            }          
        %>
        <br/><hr/>
                <a href="login.jsp">Login</a> <br/>
               	<a href="main.html">Home</a>
                <hr/>
                
                
              
</body>
</html>