package com.as.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.Users;
import com.as.service.UsersService;
import com.as.service.impl.UsersSeriveImpl;

@WebServlet("/users/selectbyuname")
public class SelectByUnameServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname=request.getParameter("uname");
		UsersService usersService=new UsersSeriveImpl();
		Users users=usersService.selectByUname(uname);
		//out
		PrintWriter out=response.getWriter();
		
		if(users!=null)
		{
			//存在
			out.print("{\"result\":\"yes\"}");
		}
		else
		{
			//不存在
			out.print("{\"result\":\"no\"}");
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
