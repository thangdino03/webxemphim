package edu.poly.site.servlet;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.EmailUtils;
import edu.poly.dao.UserDao;
import edu.poly.model.User;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	}

	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	    try {
//	        String fromEmail = "thangnqpd07661@fpt.edu.vn";
//	        String password = "zlxpjuvzqyhvrwbt";
//
//	        String emailAddress = request.getParameter("email");
//	        String username = request.getParameter("username");
//
//	        UserDao dao = new UserDao();
//	        User user = dao.findByUsernameAndEmail(username, emailAddress);
//
//	        if (user == null) {
//	            request.setAttribute("error", "Username or email are incorrect");
//	        } else {
//	            String emailSubject = "Forgot Password Function";
//	            String emailContent = createEmailContent(username, user.getPassword());
//	            EmailUtils.sendEmail(fromEmail, password, emailAddress, emailSubject, emailContent);
//	            request.setAttribute("message", "An email has been sent to the provided email address. Please check your email for instructions to reset your password.");
//	        }
//
//	    } catch (MessagingException e) {
//	        e.printStackTrace();
//	        request.setAttribute("error", "An error occurred while sending the email: " + e.getMessage());
//	    } finally {
//	        PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
//	    }
//	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String fromEmail = "thangnqpd07661@fpt.edu.vn";
	        String password = "zlxpjuvzqyhvrwbt";

	        String emailAddress = request.getParameter("email");
	        String username = request.getParameter("username");

	        UserDao dao = new UserDao();
	        User user = dao.findByUsernameAndEmail(username, emailAddress);

	        if (user == null) {
	            request.setAttribute("error", "Username or email are incorrect");
	        } else {
	            String emailSubject = "Forgot Password Function";
	            String emailContent = createEmailContent(username, user.getPassword());
	            EmailUtils.sendEmail(fromEmail, password, emailAddress, emailSubject, emailContent);
	            request.setAttribute("message", "An email has been sent to the provided email address. Please check your email for instructions to reset your password.");
	        }

	    } catch (MessagingException e) {
	        e.printStackTrace();
	        request.setAttribute("error", "An error occurred while sending the email: " + e.getMessage());
	    } catch (Exception ex) {
	        ex.printStackTrace();
	        request.setAttribute("error", "An error occurred: " + ex.getMessage());
	    } finally {
	        PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	    }
	}

	
	//nội dung email kèm pass đc get từ csdl 
	private String createEmailContent(String username, String password) {
	    String emailContent = "Dear " + username + ",<br>" +
	                          "<br>" +
	                          "You have used the forgot password function. <br>" +
	                          "<br>" +
	                          "Your password is: " + password + "<br>" +
	                          "<br>" +
	                          "Regards,<br>" +
	                          "Administrator";
	    return emailContent;
	}



}
