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
@WebServlet("/checkinout/append")
public class AppendServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//insert into checkinout(intime,outtime,memberid,name,sex,tel,idcard,roomid,userid,pay)

		//得到session
		HttpSession session=request.getSession();
		Users users=(Users)session.getAttribute("loginusers");
		
		
		String intime=request.getParameter("intime");

		String outtime=request.getParameter("outtime");
		int memberid=Integer.parseInt(request.getParameter("memberid"));
		String sex=request.getParameter("sex");
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		String idcard=request.getParameter("idcard");
		int roomid=Integer.parseInt(request.getParameter("roomid"));
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int userid=users.getId();//当前登录用户的id
		int pay=Integer.parseInt(request.getParameter("pay"));
		
			
		CheckInOut checkInOut=new CheckInOut(0, "", intime, outtime, memberid, name, sex, tel, idcard, roomid, userid, pay, 0);
		CheckInOutService checkInOutService=new CheckInOutServiceImpl();
		
		//添加
		checkInOutService.append(checkInOut);
//周一完成.	
//		##########办理入住:
//			#1>房间状态 0===1 房间状态 0没有人入住 1有人入住 3预定中 4.维修中
//			#2>预约状态 0==2 状态 0表示预约 1表示取消预约 2表示预约转成入住
		
		RoomService roomService=new RoomServiceImpl();
		roomService.updateStatus(roomid, 1);
		BookService bookService=new BookServiceImpl();
		bookService.updateStatus(bookid, 2);
		//重定向
		response.sendRedirect(request.getContextPath()+"/checkinout/list");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
