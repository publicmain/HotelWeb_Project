package com.as.controller.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.as.domain.Book;
import com.as.domain.Member;
import com.as.service.BookService;
import com.as.service.MemberService;
import com.as.service.impl.BookServiceImpl;
import com.as.service.impl.MemberServiceImpl;

/**
 * 预约添加
 * @author user
 *
 */
@WebServlet("/home/bookappend")
public class BookAppendServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//判断是否登录
		HttpSession session=request.getSession();
		if(session.getAttribute("member")==null)
		{
			response.sendRedirect(request.getContextPath()+"/home/login.jsp");
			return;
		}
		
		//insert into book(hotelid,memberid,personcount,roomcount,daycount,begintime,endtime,roomtypeid,money)values(?,?,?,?,?,?,?,?,?)";
		int hotelid=Integer.parseInt(request.getParameter("hotelid"));
		
		int memberid=((Member)session.getAttribute("member")).getId();
		
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
		//int memberid=session中有 member 
		book.setMemberid(memberid);
		request.setAttribute("book", book);
		//调用预约添加方法
		BookService bookService=new BookServiceImpl();
		bookService.append(book);
		
		response.sendRedirect(request.getContextPath()+"/home/success.jsp");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
