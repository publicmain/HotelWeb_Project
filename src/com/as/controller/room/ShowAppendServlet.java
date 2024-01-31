package com.as.controller.room;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.RoomType;
import com.as.service.RoomTypeService;
import com.as.service.impl.RoomTypeServiceImpl;

/**
 * 显示添加页面
 * @author user
 *
 */
@WebServlet("/room/showappend")
public class ShowAppendServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		RoomTypeService roomTypeService=new RoomTypeServiceImpl();
		RoomType roomType=new RoomType();
		roomType.setHotelid(-1);
		List<RoomType> list=roomTypeService.list(-1, roomType).getList();
		//
		request.setAttribute("list", list);
		//转发
		request.getRequestDispatcher("/admin/room/append.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
