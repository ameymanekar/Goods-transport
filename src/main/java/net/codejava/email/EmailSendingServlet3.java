package net.codejava.email;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import hvpm.dcpe.Student;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author www.codejava.net
 * 
 */
@WebServlet("/EmailSendingServlet3")
public class EmailSendingServlet3 extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
	
		String sid = request.getParameter("sid");
		String subject = request.getParameter("subject");
		String recipient = request.getParameter("recipient");
		
                String content = request.getParameter("content");

		String resultMessage = "";
		try{
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
	        String msql="DELETE FROM booking WHERE sid= "+sid+"";
	        PreparedStatement smt=con.prepareStatement(msql);
	     
	         smt.executeUpdate();
	        
	    }
	   catch(SQLException er) 
	   {
	      er.printStackTrace();  
	   } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

		
		
		
		
		
		
		
		
                       
            try {
                //
                
                
                EmailUtility.sendEmail(host, port, user, pass,recipient, subject,content);
            } catch (MessagingException ex) {
                Logger.getLogger(EmailSendingServlet3.class.getName()).log(Level.SEVERE, null, ex);
            }
                
			resultMessage = "The e-mail was sent successfully";
			 bookinginsert();
          
			
			
		
			request.setAttribute("Message", resultMessage);
			getServletContext().getRequestDispatcher("/ViewBooking.jsp").forward(
					request, response);
		
	
 

}

	private void bookinginsert() {
		// TODO Auto-generated method stub
		
	}

}

