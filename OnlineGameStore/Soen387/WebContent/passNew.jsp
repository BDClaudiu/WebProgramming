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
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%


    /*
    GETS THE VALUES OF THE PARAMETERS
     */
    String email = request.getParameter("emailResetInput");
    String key = request.getParameter("KeyResetInput");
    
    String password1 = request.getParameter("newPassConfirmResetInput");
    String password2= request.getParameter("newPassResetInput");
    
    
    try {

        /*
            CONNECTS TO THE DATABASE
         */
         Class.forName("com.mysql.jdbc.Driver");
  	   	String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
  	   	String databaseUser="root";
  	   	String databasePass="";
  	   
  		Connection conn=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
    		
        /*
            CREATES THE STATEMENT
         */
        Statement st = conn.createStatement();

        /*
            SENDS THE STATEMENT WITH THE QUERY AND STORE THE RESULT IN ResultSet
         */
        ResultSet rs = st.executeQuery("SELECT * FROM usertable WHERE email='" + email + "'");

        if (rs.next()) 
        {

            String pass = rs.getString(15);
            int userid = rs.getInt("userid");
           
            String substr = pass.substring(pass.length() - 13);
            //  takes the date-time from the key to compare it with the current date-time
            long keyDate = Long.parseLong(substr) + 86400000; // 86400000 - 24h in miliseconds  
            long unixTime = System.currentTimeMillis(); //current date-time    (unixTime < keyDate) && (pass.equals(key)
            
            if (unixTime < keyDate && pass.equals(key) && password1.equals(password2)) 
            {	String password=password1;
                //Write a new password in the DB 
                String query = ("UPDATE usertable SET password = '" + password + "', blocked=0 WHERE email='" + email + "'");

                PreparedStatement p =  conn.prepareStatement(query);
                p.executeUpdate();

                
                conn.close();
                st.close();

                
                out.print("<h1>Password changed succesfully</h1>");
            } else {
                conn.close();
                st.close();
                out.print("<h1>Invalid input, check password inputs or expiry date</h1>");
            }

        } else {
            conn.close();
            st.close();
            out.print("<h1>There is no user with this email!</h1>");
        }

    } catch (Exception e) {
        //out.println(e);
    	out.print("<h1>Invalid input, check password or expiry date</h1>");
    }
%>


<a href="mainHtml.jsp">Continue to Main Page</a>

</body>
</html>