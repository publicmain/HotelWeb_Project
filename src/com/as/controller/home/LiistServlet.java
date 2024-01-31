package com.as.controller.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Hotel;
import com.as.domain.RoomType;
import com.as.service.HotelService;
import com.as.service.RoomTypeService;
import com.as.service.impl.HotelServiceImpl;
import com.as.service.impl.RoomTypeServiceImpl;
import com.as.util.Pages;

/**
 * 酒店对应的房间类型列表
 * @author user
 *
 */
@WebServlet("/home/list")
public class LiistServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		int hotelid=Integer.parseInt(request.getParameter("hotelid"));
		
		//http://localhost:8080/hotel/home/list?hotelid=1&begintime=2021-02-20&endtime=2021-02-20
		String begintime=request.getParameter("begintime");
		String endtime=request.getParameter("endtime");
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//
		RoomTypeService roomTypeService=new RoomTypeServiceImpl();
		RoomType roomType=new RoomType();
		roomType.setHotelid(hotelid);
		
		Pages<RoomType> pages=roomTypeService.list(currPage, roomType);
		
		request.setAttribute("pages", pages);
		request.setAttribute("begintime", begintime);
		request.setAttribute("endtime", endtime);
		request.setAttribute("hotelid", hotelid);
		

		//转发
		request.getRequestDispatcher("/home/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
