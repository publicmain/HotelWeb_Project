package com.as.controller.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.Book;

/**
 * 显示预约信息
 * @author user
 *
 */
@WebServlet("/home/bookshow")
public class BookShowServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");

		int hotelid=Integer.parseInt(request.getParameter("hotelid"));
		//memberid,
		int personcount=Integer.parseInt(request.getParameter("personcount"));
		int roomcount=Integer.parseInt(request.getParameter("roomcount"));
		int daycount=Integer.parseInt(request.getParameter("daycount"));
		String begintime=request.getParameter("begintime");
		String endtime=request.getParameter("endtime");
		int roomtypeid=Integer.parseInt(request.getParameter("roomtypeid"));
		int money=Integer.parseInt(request.getParameter("money"));
		
		Book book=new Book();
		
		book.setHotelid(hotelid);
		book.setPersoncount(personcount);
		book.setRoomcount(roomcount);
		book.setDaycount(daycount);
		book.setBegintime(begintime);
		book.setEndtime(endtime);
		book.setRoomtypeid(roomtypeid);
		book.setMoney(money);
		
		request.setAttribute("book", book);
		//
		request.getRequestDispatcher("/home/book.jsp").forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
