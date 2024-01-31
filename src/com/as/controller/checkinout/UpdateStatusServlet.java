package com.as.controller.checkinout;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.CheckInOut;
import com.as.domain.Room;
import com.as.domain.RoomType;
import com.as.domain.Users;
import com.as.service.BookService;
import com.as.service.CheckInOutService;
import com.as.service.RoomService;
import com.as.service.RoomTypeService;
import com.as.service.impl.BookServiceImpl;
import com.as.service.impl.CheckInOutServiceImpl;
import com.as.service.impl.RoomServiceImpl;
import com.as.service.impl.RoomTypeServiceImpl;
import com.as.util.Common;

/**
 * 处理添加
 * @author user
 *
 */
@WebServlet("/checkinout/updatestatus")
public class UpdateStatusServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
	
		int id=Integer.parseInt(request.getParameter("id"));
		

		CheckInOutService checkInOutService=new CheckInOutServiceImpl();
		RoomService roomService=new RoomServiceImpl();
//		#checkinout --status 0 -入住 1--退房
//		#--退房 
//		#room表 --status  1-改为0 
		
		checkInOutService.updateStatus(id, 1);
		CheckInOut checkInOut=checkInOutService.getById(id);//主键查询
		roomService.updateStatus(checkInOut.getRoomid(), 0);
		
		response.sendRedirect(request.getContextPath()+"/checkinout/list");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
