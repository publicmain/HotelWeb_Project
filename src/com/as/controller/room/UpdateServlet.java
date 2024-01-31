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
import com.as.util.Common;

/**
 * 处理添加
 * @author user
 *
 */
@WebServlet("/room/update")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		//String sql="update room set hotelid=?,roomnum=?,roomtypeid=?,status=?,tel=?,region=?,locknumber=? where id=?";
		int hotelid=Common.HOTELID;
		String roomnum=request.getParameter("roomnum");
		int roomtypeid=Integer.parseInt(request.getParameter("roomtypeid"));
		int status=Integer.parseInt(request.getParameter("status"));
		String tel=request.getParameter("tel");
		String region=request.getParameter("region");
		String locknumber=request.getParameter("locknumber");
		int id=Integer.parseInt(request.getParameter("id"));
		Room room=new Room(id, "", hotelid, roomnum, roomtypeid, status, tel, region, locknumber);
		RoomService roomService=new RoomServiceImpl();
		//添加
		roomService.modifyById(room);
		//重定向
		response.sendRedirect(request.getContextPath()+"/room/list");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
