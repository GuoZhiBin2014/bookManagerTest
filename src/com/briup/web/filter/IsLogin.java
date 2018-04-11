package com.briup.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

import com.briup.bean.User;

/**
 * Servlet Filter implementation class IsLogin
 */
@WebFilter(urlPatterns = { "/main", "/book_select", "/book_add",
		"/book_update", "/stock_select", "/stock_in", "/stock_back",
		"/sale_in", "/sale_select", "/sale_back", "/sale_statistics",
		"/user_info", "/user_custom", "/user_update","/user_admin" })
public class IsLogin implements Filter {

	/**
	 * Default constructor.
	 */
	public IsLogin() {
		System.out.println("isLogin");
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("doFilter");
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String path = httpRequest.getServletPath();
		System.out.println(path);
		HttpSession session = httpRequest.getSession();
		// if(path.equals("/main")){
		// httpRequest.getRequestDispatcher("/login").forward(httpRequest,
		// httpResponse);
		// return;
		// }
		User user = (User) session.getAttribute("user");
		if (session.getAttribute("user") == null) {
			if (path.equals("/main")) {
				httpRequest.getRequestDispatcher("/login").forward(httpRequest,
						httpResponse);
			} else {
				httpRequest.getRequestDispatcher("/relogin").forward(
						httpRequest, httpResponse);
			}
		} else {
			chain.doFilter(request, response);
		}

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
