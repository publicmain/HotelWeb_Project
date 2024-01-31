package com.as.controller.roomtype;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.as.domain.RoomType;
import com.as.service.RoomTypeService;
import com.as.service.impl.RoomTypeServiceImpl;
import com.as.util.Common;

/**
 * 房间类型添加
 * @author user
 *
 */
//文件上传的注解:
@MultipartConfig
@WebServlet("/roomtype/append")
public class AppendServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//页面的编码
		response.setContentType("text/html; charset=UTF-8");
		//响应对象的编码
		response.setCharacterEncoding("utf-8");
		//请求对象的编码
		request.setCharacterEncoding("utf-8");
		//	String sql="insert into roomtype(hotelid,roomtypename,bedsnumber,dayprice,hourprice,depositmoney,picture,total,note) values(?,?,?,?,?,?,?,?,?)";
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
		int hotelid=Common.HOTELID;
		String roomtypename=request.getParameter("roomtypename");
		int bedsnumber=Integer.parseInt(request.getParameter("bedsnumber"));
		int dayprice=Integer.parseInt(request.getParameter("dayprice"));
		int hourprice=Integer.parseInt(request.getParameter("hourprice"));
		int depositmoney=Integer.parseInt(request.getParameter("depositmoney"));
		//String picture="1.jpg";
		String picture=filename;//上传后的文件名称
		int total=Integer.parseInt(request.getParameter("total"));
		String note=request.getParameter("note");
		
		RoomType roomType=new RoomType(0, "", hotelid, roomtypename, bedsnumber, dayprice, hourprice, depositmoney, picture, total, note);
		RoomTypeService roomTypeService=new RoomTypeServiceImpl();
		//调用方法添加
		roomTypeService.append(roomType);
		//重定向
		response.sendRedirect(request.getContextPath()+"/roomtype/list");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
