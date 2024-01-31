package com.as.controller.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Hotel;
import com.as.service.HotelService;
import com.as.service.impl.HotelServiceImpl;
import com.as.util.Pages;


@WebServlet("/home/searcher")
public class SeacherServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		String cityname=request.getParameter("cityname");
		String begintime=request.getParameter("begintime");
		String endtime=request.getParameter("endtime");
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//
		HotelService hotelService=new HotelServiceImpl();
		Hotel hotel=new Hotel();
		hotel.setCityname(cityname);
		Pages<Hotel> pages=hotelService.list(currPage, hotel);
		
		request.setAttribute("pages", pages);
		request.setAttribute("begintime", begintime);
		request.setAttribute("endtime", endtime);
		request.setAttribute("cityname", cityname);
		//转发
		request.getRequestDispatcher("/home/searcher.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
