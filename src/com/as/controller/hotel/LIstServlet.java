package com.as.controller.hotel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Hotel;
import com.as.domain.Room;
import com.as.service.HotelService;
import com.as.service.RoomService;
import com.as.service.impl.HotelServiceImpl;
import com.as.service.impl.RoomServiceImpl;
import com.as.util.Pages;

/**
 * 酒店管理查询
 * @author user
 *
 */
@WebServlet("/hotel/list")
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
		String tel=request.getParameter("tel");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String cityname=request.getParameter("cityname");
		
		Hotel hotel=new Hotel();
		hotel.setTel(tel);
		hotel.setAddress(address);
		hotel.setCityname(cityname);
		hotel.setName(name);
		
		HotelService hotelService=new HotelServiceImpl();
		Pages<Hotel> pages=hotelService.list(currPage, hotel);
		request.setAttribute("pages",pages);
		request.setAttribute("hotel", hotel);
		request.getRequestDispatcher("/admin/hotel/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
