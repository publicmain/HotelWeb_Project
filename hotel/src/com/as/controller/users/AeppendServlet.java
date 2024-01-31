package com.as.controller.users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Users;
import com.as.service.UsersService;
import com.as.service.impl.UsersSeriveImpl;
import com.as.util.Common;

//@WebServlet("/模块名/功能名")
/**
 * 用户添加
 * @author user
 *
 */
@WebServlet("/users/append")
public class AeppendServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//接表单参数的值
		//insert into users(uname,upwd,hotelid,state,prompt,answer) values(?,?,?,?,
		String uname=request.getParameter("uname");
		String upwd=request.getParameter("upwd");

		String prompt=request.getParameter("prompt");
		String answer=request.getParameter("answer");
		//把int类型转成String类型
		String hotelid=String.valueOf(Common.HOTELID);
		int state=1;
		
		//
		UsersService usersService=new UsersSeriveImpl();
		Users users=new Users(uname, upwd, hotelid, state, prompt, answer);
		//调用添加方法
		usersService.append(users);
		//页面重定向:http://localhost:8080/hotel/users/list
		String root=request.getContextPath();//项目的根目录 "/hotel"
		//response.sendRedirect("/hotel/users/list");
		response.sendRedirect(root+"/users/list");
		
		
	

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
