package com.as.controller.room;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Room;
import com.as.service.RoomService;
import com.as.service.impl.RoomServiceImpl;
import com.as.util.Pages;

/**
 * 房间管理查询
 * @author user
 *
 */
@WebServlet("/room/list")
public class LIstServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//当前页
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//房间类型名称
		String roomtypename=request.getParameter("roomtypename");
		String tel=request.getParameter("tel");
		String region=request.getParameter("region");
		int status=request.getParameter("status")==null?-1:Integer.parseInt(request.getParameter("status"));
		String roomnum=request.getParameter("roomnum");
		
		
		Room room=new Room();
		room.setRoomtypename(roomtypename);
		room.setStatus(status);
		room.setTel(tel);
		room.setRoomnum(roomnum);
		room.setRegion(region);
		RoomService roomService=new RoomServiceImpl();
		Pages<Room> pages=roomService.list(currPage, room);
		//
		request.setAttribute("pages", pages);
		request.setAttribute("room",room);
		request.getRequestDispatcher("/admin/room/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
