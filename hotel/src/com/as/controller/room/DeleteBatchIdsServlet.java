package com.as.controller.room;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Room;
import com.as.domain.RoomType;
import com.as.service.RoomService;
import com.as.service.RoomTypeService;
import com.as.service.impl.RoomServiceImpl;
import com.as.service.impl.RoomTypeServiceImpl;

//@WebServlet("/访问serlvet的映射地址")
//@WebServlet("/模块名/功能名")

/**
 *按主键查询
 * @author user
 *
 */
@WebServlet("/room/deletebatchids")
public class DeleteBatchIdsServlet extends HttpServlet {

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
				
		
		//接地址栏中参数的值
		//http://localhost:8080/hotel/room/deletebatchids?ids=16,14,13,12,11
		String params=request.getParameter("ids");
		//拆分字符串:形成字符串数组
		String[] ids=params.split(",");
		//
		RoomService roomService=new RoomServiceImpl();
		for(String id:ids)
		{
			roomService.removeById(Integer.parseInt(id));
		}
		//重定向
		response.sendRedirect(request.getContextPath()+"/room/list");
		
		

	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
