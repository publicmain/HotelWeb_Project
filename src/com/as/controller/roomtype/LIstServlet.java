package com.as.controller.roomtype;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.RoomType;
import com.as.service.RoomTypeService;
import com.as.service.impl.RoomTypeServiceImpl;
import com.as.util.Pages;

/**
 * 房间类型管理
 * @author user
 *
 */
@WebServlet("/roomtype/list")
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
		String roomTypeName=request.getParameter("roomtypename");
		RoomTypeService roomTypeService=new RoomTypeServiceImpl();
		RoomType roomType=new RoomType();
		roomType.setRoomtypename(roomTypeName);
		roomType.setHotelid(-1);
		Pages<RoomType> pages=roomTypeService.list(currPage, roomType);
		//
		request.setAttribute("pages", pages);
		request.setAttribute("roomType",roomType);
		request.getRequestDispatcher("/admin/roomtype/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
