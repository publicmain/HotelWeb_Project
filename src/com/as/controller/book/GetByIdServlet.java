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
@WebServlet("/book/getbyid")
public class GetByIdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//当前页
		int id=Integer.parseInt(request.getParameter("id"));
		
		

		
		BookService bookService=new BookServiceImpl();
		 
		Book book=bookService.getById(id);
		//
	
		request.setAttribute("book", book);

		request.getRequestDispatcher("/admin/checkinout/append.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
