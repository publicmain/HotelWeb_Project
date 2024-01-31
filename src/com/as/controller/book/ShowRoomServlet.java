package com.as.controller.book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.Room;
import com.as.service.RoomService;
import com.as.service.impl.RoomServiceImpl;
import com.as.util.Common;

/**
 * 显示分配房间的界面
 * @author user
 *
 */
@WebServlet("/book/showroom")
public class ShowRoomServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//http://localhost:8080/hotel/book/showroom?bookid=22
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		//得到session
		HttpSession session=request.getSession();
		//判断是否有指定名称users的session
//		if(session.getAttribute("loginusers")==null)
//		{
//			//request.getContextPath() 得到就是/hotel
//			//重定向到登录页面
//			response.sendRedirect(request.getContextPath()+"/admin/login.jsp");
//			return;
//		}
		
		RoomService roomService=new RoomServiceImpl();
		Room room=new Room();
		room.setStatus(0);//显示所有空房间
		List<Room> list=roomService.list(-1, room).getList();
		
		//默认读取属性文件时中文乱码
		//默认编码:iso-8859-1
		//iso-8859-1转成utf-8
		String hotelname=new String(Common.HOTELNAME.getBytes("iso-8859-1"),"utf-8");
		
		request.setAttribute("hotelname",hotelname );
		request.setAttribute("list", list);
		request.setAttribute("bookid", bookid);//预约表的主键的字段的值
		request.getRequestDispatcher("/admin/book/showroom.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}
}
