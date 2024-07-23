package edu.poly.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.common.UploadUtils;
import edu.poly.dao.UserDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class VideoManagementServlet
 */
@WebServlet({ "/Admin/VideoManagement", "/Admin/VideoManagement/create", "/Admin/VideoManagement/update",
		"/Admin/VideoManagement/delete", "/Admin/VideoManagement/reset", "/Admin/VideoManagement/edit", })
@MultipartConfig
public class VideoManagementServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ktra các thành phần có chứa các ui yêu cầu hay k
		String url = request.getRequestURI().toString();
		if (url.contains("edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("reset")) {
			reset(request, response);
			return;
		}

		Video video = new Video();
		video.setPoster(""); // hình ảnh đại diện cho video

		VideoDao vdao = new VideoDao();
		List<Video> vlist = vdao.findAll();
		request.setAttribute("videoo", vlist);

		request.setAttribute("video", video);

		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String url = request.getRequestURI().toString();

		if (url.contains("create")) {
			create(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("update")) {
			update(request, response);
			return;
		}
		if (url.contains("reset")) {
			reset(request, response);
			return;
		}

	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("videoId");
		if (id == null) {
			request.setAttribute("error", "VideoID is required");
			PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
			return;
		}
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(id);
			if (video == null) {
				request.setAttribute("error", "Video not found");
				PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
				return;
			}
			request.setAttribute("video", video);

			List<Video> vlist = dao.findAll();
			request.setAttribute("videoo", vlist);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	}

	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());

//			video.setPoster(
//					"uploads/" + UploadUtils.processUploadFiled("cover", request, "/uploads", video.getVideoId()));

			
			VideoDao dao = new VideoDao();
			dao.insert(video);

			List<Video> vlist = dao.findAll();
			request.setAttribute("videoo", vlist);
			request.setAttribute("video", video);
			request.setAttribute("message", "Video is inserted");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error" + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);

	}

	private void findAll(HttpServletRequest request, HttpServletResponse response) {
		Video video = new Video();
		try {

			VideoDao dao = new VideoDao();
			List<Video> list = dao.findAll();
			request.setAttribute("video", list);
			List<Video> vlist = dao.findAll();
			request.setAttribute("videoo", vlist);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}

	}

	private void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Video video = new Video();


	    request.setAttribute("video", video);
	    
	    PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	}


	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Lấy thông tin video từ request và cập nhật vào đối tượng Video
	    Video video = new Video();
	    try {
	        BeanUtils.populate(video, request.getParameterMap());
//	        video.setPoster(
//					"uploads/" + UploadUtils.processUploadFiled("cover", request, "/uploads", video.getVideoId()));

	     // Lấy đường dẫn hình ảnh mới từ request
	        String coverPath = request.getParameter("coverLink");

	        // Kiểm tra xem người dùng có cung cấp đường dẫn hình ảnh mới hay không
	        if (coverPath != null && !coverPath.isEmpty()) {
	            // Nếu có, sử dụng đường dẫn mới từ request
	            video.setPoster(coverPath);
	        } else {
	            // Nếu không, sử dụng đường dẫn từ tệp đã tải lên
	            video.setPoster("uploads/" + UploadUtils.processUploadFiled("cover", request, "/uploads", video.getVideoId()));
	        }

	        
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "Error: " + e.getMessage());
	        PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	        return;
	    }

	    try {
	        // Tạo đối tượng VideoDao và cập nhật thông tin video vào cơ sở dữ liệu
	        VideoDao dao = new VideoDao();
	        dao.update(video);
	    	List<Video> vlist = dao.findAll();
			request.setAttribute("videoo", vlist);

	        // Set thông báo thành công
	        request.setAttribute("message", "Video is updated");
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "Error: " + e.getMessage());
	    }

	    // Forward về trang quản lý video
	    PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String id = request.getParameter("videoId");
	    if (id == null || id.isEmpty()) {
	        request.setAttribute("error", "VideoID is required");
	        PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	        return;
	    }
	    try {
	        VideoDao dao = new VideoDao();
	        Video video = dao.findById(id);
	        if (video == null) {
	            request.setAttribute("error", "Video not found");
	            PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	            return;
	        }
	        dao.delete(id);
	    	List<Video> vlist = dao.findAll();
			request.setAttribute("videoo", vlist);
	        request.setAttribute("message", "Video deleted");
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("error", "Error: " + e.getMessage());
	    }
	    PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGERMENT_PAGE);
	}


}
