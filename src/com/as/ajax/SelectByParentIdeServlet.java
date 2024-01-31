package com.as.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.as.domain.City;
import com.as.service.CityService;
import com.as.service.impl.CityServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/city/selectbyparentid")
public class SelectByParentIdeServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int parentId=Integer.parseInt(request.getParameter("parentid"));
		
		CityService cityService=new CityServiceImpl();
		
		List<City> list=cityService.selectByParentId(parentId);
		
		//
		ObjectMapper objectMapper=new ObjectMapper();
		//把list转成json字符串数据格式
		String json=objectMapper.writeValueAsString(list);
		//out
		PrintWriter out=response.getWriter();
		//输出浏览器:ajax的回调函数接收
		out.print(json);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
