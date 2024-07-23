package edu.poly.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
	public static void add(HttpServletRequest request, String name, Object value) {
		HttpSession session = request.getSession();
		session.setAttribute(name, value);
	}
	//lấy gtrị session
	public static Object get(HttpServletRequest request, String name) {
		HttpSession session = request.getSession();
		return session.getAttribute(name);
	}
	//huỷ bỏ session
	public static void invalidate(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
	}
	
	//ktra ng dùng đã đnhap hay chưa 
	public static boolean isLogin(HttpServletRequest request) {
		return get(request, "username") != null;
	}
	
	//trả về gtrị của username đã đc đăng nhập vào hệ thống
	public static String getLoginUsername(HttpServletRequest request) {
		Object username = get(request, "username");
		return username ==null? null: username.toString();
	
	}
}
