package com.as.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


/**
 * 字符集过滤器:统一字符集 utf-8
 * @author user
 *
 */
public class CharsetFilter implements Filter {
	
	private String charset;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
		System.out.println("charset filter...");
		this.charset=filterConfig.getInitParameter("charset");//utf-8
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		
		request.setCharacterEncoding(this.charset);
		response.setCharacterEncoding(this.charset);
		String url=((HttpServletRequest)request).getRequestURI();
		
        if(url.indexOf("/home")>0||url.indexOf(".css")>0||url.indexOf(".js")>0||url.indexOf(".png")>0||url.indexOf(".jpg")>0) {
        	System.out.println("url-charset:" +url);
        	filterChain.doFilter(request, response);
            return;
        }
		response.setContentType("text/html;charset="+this.charset);		
		filterChain.doFilter(request, response);//放行
	}
	
	@Override
	public void destroy() {
		Filter.super.destroy();
		this.charset=null;
	}

}
