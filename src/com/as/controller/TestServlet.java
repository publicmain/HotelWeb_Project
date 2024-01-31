package com.as.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

@WebServlet("/test")
public class TestServlet extends HttpServlet {



	
	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.doGet(req, resp);
//	}
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.doPost(req, resp);
//	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("servlet ...destroy....");
	}

//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		System.out.println(req.getMethod());
//		if(req.getMethod().equals("GET"))
//		{}
//		
//		if(req.getMethod().equalsIgnoreCase("post"))
//		{}
//	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpServletRequest它是ServletRequest子类
		
		HttpServletRequest request=(HttpServletRequest)req;
		
		if(request.getMethod().equals("GET"))
		{
			System.out.println("get....请求");
		}
		
		if(request.getMethod().equalsIgnoreCase("post"))
		{
			System.out.println("post....请求");
		}
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("servlet ...init ...");
	}

}
