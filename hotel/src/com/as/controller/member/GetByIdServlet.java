package com.as.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.Member;
import com.as.domain.Users;
import com.as.service.MemberService;
import com.as.service.UsersService;
import com.as.service.impl.MemberServiceImpl;
import com.as.service.impl.UsersSeriveImpl;

//@WebServlet("/访问serlvet的映射地址")
//@WebServlet("/模块名/功能名")

/**
 *按主键删除
 * @author user
 *
 */
@WebServlet("/member/getbyid")
public class GetByIdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		//------------------------------判断是否有session--开始
		//得到session
//		HttpSession session=request.getSession();
//		//判断是否有指定名称users的session
//		if(session.getAttribute("users")==null)
//		{
//			//request.getContextPath() 得到就是/hotel
//			//重定向到登录页面
//			response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
//			return;
//		}
		//------------------------------判断是否有session--开始
				
		//http://localhost:8080/hotel/users/removebyid?id=75
		//接地址栏中参数的值
		int id=Integer.parseInt(request.getParameter("id"));
		//
		MemberService memberService=new MemberServiceImpl();
		//调方法:主键查询
		Member member=memberService.getById(id);
		//
		request.setAttribute("member", member);
		//转发
		request.getRequestDispatcher("/admin/member/edit.jsp").forward(request, response);
		

	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
