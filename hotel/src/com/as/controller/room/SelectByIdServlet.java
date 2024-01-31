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



/**
 *主界面房间列表--主键查询
 * @author user
 *
 */
@WebServlet("/room/selectbyid")
public class SelectByIdServlet extends HttpServlet {

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
		RoomService roomService=new RoomServiceImpl();
		//调方法:房间主键查询
		Room room=roomService.getById(id);
		//
		request.setAttribute("room", room);
		
		RoomTypeService roomTypeService=new RoomTypeServiceImpl();
		//调方法:房间类型主键查询 room.getRoomtypeid()对应id
		RoomType roomType=roomTypeService.getById(room.getRoomtypeid());
		//
		request.setAttribute("roomType", roomType);
		
		
		//转发
		request.getRequestDispatcher("/admin/room/detail.jsp").forward(request, response);
		

	
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
