package com.as.controller.hotel;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.as.domain.Hotel;
import com.as.domain.Room;
import com.as.domain.RoomType;
import com.as.service.HotelService;
import com.as.service.RoomService;
import com.as.service.RoomTypeService;
import com.as.service.impl.HotelServiceImpl;
import com.as.service.impl.RoomServiceImpl;
import com.as.service.impl.RoomTypeServiceImpl;
import com.as.util.Common;

/**
 * 酒店添加处理
 * @author user
 *
 */
@WebServlet("/hotel/append")
@MultipartConfig
public class AppendServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		
		//文件上传开始
		String filename="";//上传后的文件名称
		try {
            //获取上传的文件
            Part part=request.getPart("file");//file为表单中表单组件name=file
            //获取请求的信息
            String name=part.getHeader("content-disposition");

            //获取上传文件的目录
            String root=request.getServletContext().getRealPath("/images");
            System.out.println("测试上传文件的路径："+root);
            
            //获取文件的后缀
            String ex=name.substring(name.lastIndexOf("."), name.length()-1);
            System.out.println("测试获取文件的后缀："+ex);
            
            //生成一个新的文件名，不重复，数据库存储的就是这个文件名，不重复的
            filename=UUID.randomUUID().toString()+ex;//fe5970aa-00ee-4151-8ec0-80bae1ee2246.png
            String allfilename=root+"\\"+filename;
            System.out.println("测试产生新的文件名："+filename);
            
            //上传文件到指定目录，不想上传文件就不调用这个
            part.write(allfilename);
            
          
        } catch (Exception e) {
            e.printStackTrace();
        }
		//文件上传结束
				
		//String sql="insert into hotel(name,tel,address,picture,cityid) values(?,?,?,?,?)";
	
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		String picture=filename;
		//int cityid=210100;//沈阳市id
		int cityid=Integer.parseInt(request.getParameter("cityid"));
	
		HotelService hotelService=new HotelServiceImpl();
		Hotel hotel=new Hotel(0, "", name, tel, address, picture, cityid, "", "");
		//添加
		hotelService.append(hotel);
		//重定向
		response.sendRedirect(request.getContextPath()+"/hotel/list");
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
