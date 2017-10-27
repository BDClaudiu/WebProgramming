package assignment1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DBconnection {

	   public static void main(String[] args) {  

		   
		   try {
			   Class.forName("com.mysql.jdbc.Driver");
			   String databaseUrl="jdbc:mysql://localhost:3306/gamedatabase";
			   String databaseUser="root";
			   String databasePass="";
			 
			   
			   Connection con=DriverManager.getConnection(databaseUrl, databaseUser,databasePass);
			   
			  
			   
			   
			   //Queries here!!
			   Statement stmt=con.createStatement();
				  
			   ResultSet rs= stmt.executeQuery("select gamename from gametable where coop=\"yes\" ");
			   
			   
			   while(rs.next())
			   
			   {
				   
				System.out.println(rs.getString(1));
				   
			   }
			   
			   
			   con.close();
				
		} catch (Exception e) {
			System.out.println(e);
			
		}
		   
		   
		   
		   
		   
		   
	         }
}