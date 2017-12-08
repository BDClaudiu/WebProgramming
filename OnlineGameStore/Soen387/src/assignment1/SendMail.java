package assignment1;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;


public class SendMail 
{
public static void send(String to, String sub, String msg, final String user, final String pass)
	{
		Properties props=new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		
		//Optional smtp port
		
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		
		Session session=Session.getInstance
		(props, new javax.mail.Authenticator()
			{
				protected PasswordAuthentication getPasswordAuthentication()
				{
					return new PasswordAuthentication(user,pass);	
				}
			}
		);
		
		try
		{
			
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(sub);
			message.setText(msg);
			
		}
		
		catch (Exception e){}
		}
		
	


//innas stuff




String host = "smtp.gmail.com";
String user = "soen387concordia@gmail.com";
String pass = "mypassword123";
String from = "OnlineGameStore.com";


//method that sends an email with a key
public void keySender(String email, String key) {

    try {

        String to = email;
        String subject = "OnlineGameStore.com / Reset password key";
        String messageText = "<div style=\"background-color: #f2f2f2; color:white; padding: 50px;margin: 30px; max-width: 500px; border: solid 1px #e6e6e6 ; \n"
                + "         border-radius: 5px; background: url(https://vignette.wikia.nocookie.net/animal-jam-clans-1/images/7/7c/D6447e3a253756e1d83119809ac72326.jpg/revision/latest?cb=20161115230110) no-repeat center center; \n"
                + "         -webkit-background-size: cover;\n"
                + "         -moz-background-size: cover;\n"
                + "         -o-background-size: cover;\n"
                + "         background-size: cover;;\">\n"
                + "        <h2><b>Game Online Store / Reset Password Key</b></h2><br>\n"
                + "        <p>This is your new security key from GAME APP Assignment Website</p><br>\n"
                + "        <p>Please use this temporary password and renew your password</p><br>\n"
                + "        <p>Account remins blocked until a new password is used</p><br>\n"
                + "        " + key + "  \n"
                + "        <br><br><h2><b>This key is valid only 24 hours</b></h2>\n"
                + "    </div>";

        boolean sessionDebug = false;
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.fallback", "false");

        java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        Session mailSession = Session.getDefaultInstance(props, null);
        mailSession.setDebug(sessionDebug);
        Message msg = new MimeMessage(mailSession);
        msg.setFrom(new InternetAddress(from));
        InternetAddress[] address = {new InternetAddress(to)};
        msg.setRecipients(Message.RecipientType.TO, address);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setContent(messageText, "text/html");

        Transport transport = mailSession.getTransport("smtp");
        transport.connect(host, user, pass);
        transport.sendMessage(msg, msg.getAllRecipients());
        transport.close();
        System.out.println("Message send successfully");

    } catch (Exception ex) {
        System.out.println("Message not send: "+ex);
    }

} 

public void checkoutSender(String email, double tottalPrice, String orderid, String gameList) {

    try {

        String to = email;
        String subject = "Thank you for your money!";
        String messageText = "<div style=\"background-color: #f2f2f2; color:white; padding: 50px;margin: 30px; max-width: 500px; border: solid 1px #e6e6e6 ; \n"
                + "         border-radius: 5px; background: url(https://vignette.wikia.nocookie.net/animal-jam-clans-1/images/7/7c/D6447e3a253756e1d83119809ac72326.jpg/revision/latest?cb=20161115230110)  no-repeat center center; \n"
                + "         -webkit-background-size: cover;\n"
                + "         -moz-background-size: cover;\n"
                + "         -o-background-size: cover;\n"
                + "         background-size: cover;;\">\n"
                + "        <p>Thank you for your purchase <br></p><br><br>\n"
                + "        <p>Game list:<br>" + gameList + "</p>\n"
                + "        <h2><b>Order ID: " + orderid + "<br>Total price $" + tottalPrice + "</b></h2>\n"
                + "    </div>";

        boolean sessionDebug = false;
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.fallback", "false");

        java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        Session mailSession = Session.getDefaultInstance(props, null);
        mailSession.setDebug(sessionDebug);
        Message msg = new MimeMessage(mailSession);
        msg.setFrom(new InternetAddress(from));
        InternetAddress[] address = {new InternetAddress(to)};
        msg.setRecipients(Message.RecipientType.TO, address);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setContent(messageText, "text/html");

        Transport transport = mailSession.getTransport("smtp");
        transport.connect(host, user, pass);
        transport.sendMessage(msg, msg.getAllRecipients());
        transport.close();
        System.out.println("message send successfully");

    } catch (Exception ex) {
        System.out.println(ex);
    }

}






}
	
	
	

