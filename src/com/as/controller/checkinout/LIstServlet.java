package com.as.controller.checkinout;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Book;
import com.as.domain.CheckInOut;
import com.as.domain.Room;
import com.as.service.BookService;
import com.as.service.CheckInOutService;
import com.as.service.RoomService;
import com.as.service.impl.BookServiceImpl;
import com.as.service.impl.CheckInOutServiceImpl;
import com.as.service.impl.RoomServiceImpl;
import com.as.util.Pages;

/**
 * 预约管理查询
 * @author user
 *
 */
@WebServlet("/checkinout/list")
public class LIstServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//当前页
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//房间类型名称
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		String idcard=request.getParameter("idcard");
		int status=request.getParameter("status")==null?-1:Integer.parseInt(request.getParameter("status"));

		CheckInOut checkInOut=new CheckInOut();
		checkInOut.setTel(tel);
		checkInOut.setIdcard(idcard);
		checkInOut.setStatus(status);
		checkInOut.setName(name);
		
		
		CheckInOutService checkInOutService=new CheckInOutServiceImpl();
		
		 
		Pages<CheckInOut> pages=checkInOutService.list(currPage, checkInOut);
		//
		request.setAttribute("pages", pages);
		request.setAttribute("checkInOut", checkInOut);

		request.getRequestDispatcher("/admin/checkinout/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
