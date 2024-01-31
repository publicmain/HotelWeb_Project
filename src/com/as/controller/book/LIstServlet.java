package com.as.controller.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Book;
import com.as.domain.Room;
import com.as.service.BookService;
import com.as.service.RoomService;
import com.as.service.impl.BookServiceImpl;
import com.as.service.impl.RoomServiceImpl;
import com.as.util.Pages;

/**
 * 预约管理查询
 * @author user
 *
 */
@WebServlet("/book/list")
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
		String roomtypename=request.getParameter("roomtypename");
		String tel=request.getParameter("tel");
		String uname=request.getParameter("uname");
		String idcard=request.getParameter("idcard");
		int status=request.getParameter("status")==null?-1:Integer.parseInt(request.getParameter("status"));

		Book book=new Book();
		book.setStatus(status);
		book.setTel(tel);
		book.setIdcard(idcard);
		book.setUname(uname);
		book.setRoomtypename(roomtypename);
		
		BookService bookService=new BookServiceImpl();
		 
		Pages<Book> pages=bookService.list(currPage, book);
		//
		request.setAttribute("pages", pages);
		request.setAttribute("book", book);

		request.getRequestDispatcher("/admin/book/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
