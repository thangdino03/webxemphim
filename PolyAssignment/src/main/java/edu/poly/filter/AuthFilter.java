package edu.poly.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

import edu.poly.common.SessionUtils;


@WebFilter(urlPatterns = "/*")
public class AuthFilter extends HttpFilter implements Filter {
   
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setAttribute("isLogin", SessionUtils.isLogin((HttpServletRequest) request));
		
		chain.doFilter(request, response);
	}

	
	
}
