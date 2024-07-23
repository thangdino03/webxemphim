package edu.poly.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.ShareDao;
import edu.poly.dao.VideoDao;
import edu.poly.domain.FavoriteReport;
import edu.poly.domain.FavoriteUserReport;
import edu.poly.domain.ShareReport;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class ReportsManagementServlet
 */
@WebServlet("/ReportsManagement")
public class ReportsManagementServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		reportFavoritesByVideos(request, response);
		reportFavoriteUsersByVideo(request, response);
		reportShareUsersByVideo(request, response);
		
		PageInfo.prepareAndForward(request, response, PageType.REPORT_MANAGERMENT_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void reportFavoriteUsersByVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// lấy video đc ng dùng lựa chọn
			String videoUserId = request.getParameter("videoUserId");
			VideoDao vdao = new VideoDao();
			List<Video> vlist = vdao.findAll();

			if (videoUserId == null && vlist.size() > 0) {
				videoUserId = vlist.get(0).getVideoId();
			}

			FavoriteDao dao = new FavoriteDao();
			List<FavoriteUserReport> list = dao.reportFavoriteUsersByVideo(videoUserId);

			request.setAttribute("videoUserId", videoUserId);
			request.setAttribute("vidList", vlist);
			request.setAttribute("favUsers", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		
		
		
	}

	protected void reportFavoritesByVideos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteReport> list = dao.reportFavoritesByVideo();

			request.setAttribute("favList", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}
	
	protected void reportShareUsersByVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String videoShareId = request.getParameter("videoShareId");
			VideoDao vdao = new VideoDao();
			List<Video> vlist = vdao.findAll();
			if (videoShareId == null && vlist.size() > 0) {
				videoShareId = vlist.get(0).getVideoId();
			}
			ShareDao dao = new ShareDao();
			List<ShareReport> list = dao.reportShareByVideo(videoShareId);
			request.setAttribute("videoShareId", videoShareId);
			request.setAttribute("vidList", vlist);
			request.setAttribute("shareUsers", list);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

}
