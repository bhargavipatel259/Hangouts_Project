package controller;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendEmail {
	final static String username = "nayanakpatel74@gmail.com";
	final static String password = "9909103830";
	final static String adminEmail = "separkingadm@gmail.com";

	public static void send(String email, String data) {
		// TODO Auto-generated method stub
		System.out.println("helooooo");
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("nayanakpatel@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("Your seat is reserved for the hangout...");
			String dataarray[] = data.split(",");
			//message.setContent("<h1> Message: " + data + "</h1>", "text/html");

			System.out.println(dataarray);
			message.setContent("Dear " + dataarray[0] + "," + "<br/><br/>Your registration for a seat in " + dataarray[1]
					+ " has been recieved and confirmed by <b>UAlbany Hangouts <b> <br/><br/><b>Hangout name:</b> " + dataarray[1] +"<br/> <b>Date:</b>" + dataarray[4]+"-"+dataarray[5]+"-2018"+ "<br/> Time:" + dataarray[2]+ "<br/><b>Venue:</b>" + dataarray[3]
					+ " <br/><br/><br/><br/>Regards,<br/>Hangouts Team", "text/html");

			Transport.send(message);

			System.out.println("Done");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}


}
