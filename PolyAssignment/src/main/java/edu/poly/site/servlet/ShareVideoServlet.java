package edu.poly.site.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.EmailUtils;
import edu.poly.dao.ShareDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.Share;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class ShareVideoServlet
 */
@WebServlet("/ShareVideo")
public class ShareVideoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SessionUtils.isLogin(request);
		if(!SessionUtils.isLogin(request)) {
			response.sendRedirect("Login");
			return;
		}
		String videoId = request.getParameter("videoId");

		if (videoId == null) {
			response.sendRedirect("/Homepage");
			return;
		}

		request.setAttribute("videoId", videoId);
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_SHARE_PAGE);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fromEmail = "thangnqpd07661@fpt.edu.vn";
		String password = "zlxpjuvzqyhvrwbt";

		String emailAddress = request.getParameter("email");
		String videoId = request.getParameter("videoId");
		
		VideoDao dao = new VideoDao();
		List<Video> videosList = dao.findAll();
		String videoLink = null;
		// Duyệt qua danh sách video để tìm video có videoId tương ứng
		for (Video video : videosList) {
		    if (video.getVideoId().equals(videoId)) {
		        // Nếu tìm thấy video có videoId tương ứng, lấy link của video
		        videoLink = video.getLink();
		        break; // Thoát khỏi vòng lặp khi tìm thấy video
		    }
		}
		
		if (videoId == null) {
			request.setAttribute("error", "VideoId is null !");
		} else {
			Video video = new Video();
			String emailSubject = "Share Favorite Video";
			StringBuilder emailContent = new StringBuilder();
			emailContent.append("Dear Ms/Mr. <br>");
			emailContent.append("The Video is more interesting and I want to share whith you. <br>");
			emailContent.append("Please click the link ")
//					.append(String.format("<a herf=''>View Video</a><br>", videoId));
			.append(String.format("<a href='%s'>View Video</a><br>",  videoLink,videoId));
			emailContent.append("Regards <br>");
			emailContent.append("Administrator");

			ShareDao daoo = new ShareDao();
			Share share = new Share();
			share.setEmails(emailAddress);
			share.setSharedDate(new Date());

			String username = SessionUtils.getLoginUsername(request);
			User user = new User();
			user.setUsername(username);
			
			share.setUser(user);
//			Video video = new Video();
			video.setVideoId(videoId);
			share.setVideo(video);

			daoo.insert(share);

			try {
				EmailUtils.sendEmail(fromEmail, password, emailAddress, emailSubject, emailContent.toString());
				request.setAttribute("message",
						"An email has been sent to the provided email address.");
			} catch (MessagingException e) {
				e.printStackTrace();
				request.setAttribute("error", "An error occurred while sending the email: " + e.getMessage());
			}
			PageInfo.prepareAndForwardSite(request, response, PageType.SITE_SHARE_PAGE);

		}

	}

}
