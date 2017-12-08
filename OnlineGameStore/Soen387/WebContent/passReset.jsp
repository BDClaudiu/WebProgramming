<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="assignment1.SendMail"%>
<%@page import="java.util.UUID"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>



<%

    
    String email = request.getParameter("passwordResetTxt");
 
    try {

        /*
            CONNECTS TO THE DATABASE
         */
         Class.forName("com.mysql.jdbc.Driver");
 	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
 	   	String databaseUser="root";
 	   	String databasePass="";
 	   
 		Connection conn=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
   	    Statement st = conn.createStatement();

        /*
            SENDS THE STATEMENT WITH THE QUERY AND STORE THE RESULT IN ResultSet
         */
        ResultSet rs = st.executeQuery("SELECT * FROM usertable WHERE email='" + email + "'");

        if (rs.next()) {

            /*
                 GENERATE AN ACCESS KEY
             */
            long unixTime = System.currentTimeMillis(); // date string
            
            String key = UUID.randomUUID().toString() + "-" + unixTime;; // id key
            
            try 
            {		
	                String query = ("UPDATE usertable SET password = '" + key + "' WHERE email='" + email + "'");
	                PreparedStatement p= conn.prepareStatement(query);
	    		 	p.executeUpdate();
	
	                //Send an Email to ""email"" with ""key"" to the client with the new access key 
	                SendMail emailSend = new SendMail();
	    
	                emailSend.keySender(email, key);
	                conn.close();
	                st.close();
					
            } catch (Exception e) 
	            {
	                out.println(e);
	            }

            out.print("<h3>An Email has been send to:  </h3>"+email);
            
        } else {
        	out.print("<h3>Invalid email address  </h3>");
        }

    } catch (Exception e) {
        out.println(e);
    }

%>

<a href="mainHtml.jsp">Continue to Main Page</a>
</body>
</html>