package com.as.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.HttpServer;

/**
 * 用户登录的过滤器
 * @author user
 *
 */
//@WebFilter("/*")
public class LoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
			//把ServletRequest转成HttpServletRequest类型
			HttpServletRequest request=(HttpServletRequest)req;
			//把ServletResponse转成HttpServletResponse类型
			HttpServletResponse response=(HttpServletResponse)resp;
			String uri=request.getRequestURI();//请求资源的地
			if(uri.indexOf("/home")>0 ||uri.indexOf("login.jsp")>0 || uri.indexOf("/users/login")>0 ||uri.indexOf(".css")>0||uri.indexOf(".js")>0||uri.indexOf(".png")>0||uri.indexOf(".jpg")>0)
			{
				//放行
				chain.doFilter(request, response);
				return;
			}
			//判断是否有session
			HttpSession session=request.getSession();
			if(session.getAttribute("loginusers")==null)
			{
				response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
				return;
			}
			
			
			//放行
			chain.doFilter(request, response);
		
	}

}
