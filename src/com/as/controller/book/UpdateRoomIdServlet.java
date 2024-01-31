package com.as.controller.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.service.BookService;
import com.as.service.RoomService;
import com.as.service.impl.BookServiceImpl;
import com.as.service.impl.RoomServiceImpl;

//@WebServlet("/访问serlvet的映射地址")
//@WebServlet("/模块名/功能名")

/**
 *给预约-分配房间
 * @author user
 *
 */
@WebServlet("/book/updateroomid")
public class UpdateRoomIdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		//------------------------------判断是否有session--开始
//		//得到session
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
				
		//http://localhost:8080/hotel/users/removebyid?id=75
		//接地址栏中参数的值
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int roomid=Integer.parseInt(request.getParameter("roomid"));
		//
		BookService bookService=new BookServiceImpl();
		//ssm	
		//
		//调方法:分配房间的方法
		bookService.updateRoomId(bookid, roomid);
		//修改房间状态
		RoomService roomService=new RoomServiceImpl();
		//
		roomService.updateStatus(roomid, 3);//3--已预约
		//页面重定向:http://localhost:8080/hotel/users/list
		String root=request.getContextPath();//项目的根目录 "/hotel"
		response.sendRedirect(root+"/book/list");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}