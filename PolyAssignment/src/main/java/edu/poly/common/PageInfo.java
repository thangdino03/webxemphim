package edu.poly.common;


import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

public class PageInfo {
	public static Map<PageType, PageInfo>  pageRoute = new HashedMap() ; //ds địa chỉ
	static {
		pageRoute.put(PageType.USER_MANAGEMENT_PAGE, new PageInfo("User Management", "/admin/users/users.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.REPORT_MANAGERMENT_PAGE, new PageInfo("ReportS", "/admin/reports/reports.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.VIDEO_MANAGERMENT_PAGE, new PageInfo("Videos Management", "/admin/videos/videos.jsp", null)); //khối tĩnh
	
		
		pageRoute.put(PageType.SITE_HOME_PAGE, new PageInfo("Home Page", "/sites/home/home.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_LOGIN_PAGE, new PageInfo("Login Page", "/sites/users/login.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_REGISTRATION_PAGE, new PageInfo("Registration Page", "/sites/users/registration.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_CHANGE_PASSWORD_PAGE, new PageInfo("Change Password Page", "/sites/users/change-password.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_EDIT_PROFILE_PAGE, new PageInfo("Edit Profile Page", "/sites/users/edit-profile.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_FORGOT_PASSWORD_PAGE, new PageInfo("Forgot Password Page", "/sites/users/forgot-password.jsp", null)); //khối tĩnh

		pageRoute.put(PageType.SITE_FAVORITE_PAGE, new PageInfo("Favorite Page", "/sites/videos/favorite.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_VIDEO_DETAL_PAGE, new PageInfo("Video Detail Page", "/sites/videos/detail.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_SHARE_PAGE, new PageInfo("Share", "/sites/videos/share.jsp", null)); //khối tĩnh
		pageRoute.put(PageType.SITE_ABOUT_PAGE, new PageInfo("About Dino Entertainment","/sites/reports/about.jsp",null ));
		pageRoute.put(PageType.SITE_CONTACT_PAGE, new PageInfo("Contact Dino Entertainment","/sites/reports/contact.jsp",null ));
	}
	//chuyển nội dung tới cho trang
	public static void prepareAndForward(HttpServletRequest request,HttpServletResponse response  ,PageType pageType) throws ServletException, IOException {
		PageInfo page = pageRoute.get(pageType);
		
		request.setAttribute("page", page); 
		request.getRequestDispatcher("/admin/layout.jsp").forward(request, response);
		
	}
	public static void prepareAndForwardSite(HttpServletRequest request,HttpServletResponse response  ,PageType pageType) throws ServletException, IOException {
		PageInfo page = pageRoute.get(pageType);
		
		request.setAttribute("page", page); 
		request.getRequestDispatcher("/sites/layout.jsp").forward(request, response);
		
	}
	
	private String title;
	private String contentUrl;
	private String scriptUrl;
	
	
	public PageInfo(String title, String contentUrl, String scriptUrl) {
	
		this.title = title;
		this.contentUrl = contentUrl;
		this.scriptUrl = scriptUrl;
	}
	public static Map<PageType, PageInfo> getPageRoute() {
		return pageRoute;
	}
	public static void setPageRoute(Map<PageType, PageInfo> pageRoute) {
		PageInfo.pageRoute = pageRoute;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentUrl() {
		return contentUrl;
	}
	public void setContentUrl(String contentUrl) {
		this.contentUrl = contentUrl;
	}
	public String getScriptUrl() {
		return scriptUrl;
	}
	public void setScriptUrl(String scriptUrl) {
		this.scriptUrl = scriptUrl;
	}
	
	
}
