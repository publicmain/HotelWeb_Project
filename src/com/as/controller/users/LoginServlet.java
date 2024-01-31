package com.as.controller.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.Users;
import com.as.service.UsersService;
import com.as.service.impl.UsersSeriveImpl;

/**
 * 用户登录
 * @author user
 *
 */
@WebServlet("/users/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//接地址栏中参数的值
		//1>接收
		String uname=request.getParameter("uname");//uname是<input type="text" name="uname"> name的名儿
		String upwd=request.getParameter("upwd");//upwd是<input type="text" name="upwd"> name的名儿
		
		//
		UsersService usersService=new UsersSeriveImpl();
		//
		Users users=new Users();
		users.setUname(uname);
		users.setUpwd(upwd);
		//调用方法
		//2>处理
		Users users2=usersService.login(users);
		if(users2.getState()==1)
		{
			//response.sendRedirect("/hotel/admin/main.jsp");
			//得到session对象
			HttpSession session=request.getSession();
			//
			session.setAttribute("loginusers", users2);
			//3>重定向:(跳转)
			response.sendRedirect("/hotel/main");
		}
		else
		{
			//3>重定向:(跳转)
			response.sendRedirect("/hotel/admin/login.jsp?msg="+users2.getState());//2,3
		}
		
	} 

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
