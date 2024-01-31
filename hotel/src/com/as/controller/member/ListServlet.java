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
import com.as.util.Pages;

//@WebServlet("/访问serlvet的映射地址")
//@WebServlet("/模块名/功能名")
/**
 * 会员查询
 * @author user
 * controller 控制层(servlet)-->service-dao
 */
@WebServlet("/member/list")
public class ListServlet extends HttpServlet {

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
//		if(session.getAttribute("loginusers")==null)
//		{
//			//request.getContextPath() 得到就是/hotel
//			//重定向到登录页面
//			response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
//			return;
//		}
		//------------------------------判断是否有session--开始
		//当前页
		//http://localhost:8080/hotel/users/list?currPage=1
//		update member set upwd=?,truename=?,age=?,tel=?,sex=?,idcard=?,email=?,state=?,uname=? where id=?";
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//接地址栏中参数的值
		//http://localhost:8080/hotel/users/list?uname=admin&prompt=&state=-1
		String uname=request.getParameter("uname");
		String tel=request.getParameter("tel");
		String idcard=request.getParameter("idcard");
		String sex=request.getParameter("sex");
		int state=request.getParameter("state")==null?-1:Integer.parseInt(request.getParameter("state"));
		

		//
		//实例化
		MemberService memberService=new MemberServiceImpl();
		//调用查询方法
		Member  member=new Member();
		member.setIdcard(idcard);
		member.setTel(tel);
		member.setState(state);
		member.setSex(sex);
		member.setUname(uname);
		
		
		//分页
		Pages<Member> pages=memberService.list(currPage, member);
		request.setAttribute("pages", pages);
		request.setAttribute("member", member);

		//转发:用于面页间传值的, 可能是任何数据类型.地址栏不改变量
		//与转发后的页面(/list.jsp)共享request对象
		//转发:
		request.getRequestDispatcher("/admin/member/list.jsp").forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
