package com.as.controller.home;

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


/**
 *会员登录
 * @author user
 *
 */
@WebServlet("/home/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		

		String uname=request.getParameter("uname");
		String upwd=request.getParameter("upwd");
		//
		MemberService memberService=new MemberServiceImpl();
		Member member2=new Member();
		member2.setUname(uname);
		member2.setUpwd(upwd);
		//调方法:
		Member member=memberService.login(member2);
		//
		if(member.getState()==1)
		{
			//得到session
			HttpSession session=request.getSession();
			//
			session.setAttribute("member", member);
			//正常
			response.sendRedirect(request.getContextPath()+"/home/index.jsp");
		}
		else
		{
			//加锁和密码不对
			response.sendRedirect(request.getContextPath()+"/home/login.jsp");
		}
	
		

	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
