package com.as.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Member;
import com.as.service.MemberService;
import com.as.service.impl.MemberServiceImpl;

//@WebServlet("/访问serlvet的映射地址")
//@WebServlet("/模块名/功能名")
//@WebServlet("/访问serlvet的映射地址")
@WebServlet("/member/update")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String sql="insert into member(uname,upwd,truename,age,tel,sex,idcard,email,state) values(?,?,?,?,?,?,?,?,?)";_
		
		int id=Integer.parseInt(request.getParameter("id"));
		String uname=request.getParameter("uname");
		String upwd=request.getParameter("upwd");
		String truename=request.getParameter("truename");
		int age=Integer.parseInt(request.getParameter("age"));
		String tel=request.getParameter("tel");
		String sex=request.getParameter("sex");
		String idcard=request.getParameter("idcard");
		String email=request.getParameter("email");
		int state=Integer.parseInt(request.getParameter("state"));
		
		MemberService memberService=new MemberServiceImpl();
		Member member=new Member(id, "", uname, upwd, truename, age, tel, sex, idcard, email, state);
		memberService.modifyById(member);
		//
		response.sendRedirect(request.getContextPath()+"/member/list");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
