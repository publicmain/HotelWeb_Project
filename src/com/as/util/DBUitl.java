package com.as.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.as.domain.Users;
import com.as.myannotation.TableField;

/**
 * 数据库操作的通用类
 * @author user
 *
 */
public class DBUitl {

	private static Connection conn=null;
	private static ResultSet rs=null;
	
	/**
	 * 得到数据库连接
	 * @return
	 */
	public static Connection getConection()
	{
		try
		{
		//1
		Class.forName("com.mysql.jdbc.Driver");
		//2
		conn=DriverManager.getConnection(Common.DRIVERURL, Common.USERNAME, Common.PASSWORD);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 执行insert,update,delete
	 * @param sql 对应执行insert,update,deletesql语句
	 * @param params 可变参数
	 */
	public static void executeUpdate(String sql,Object...params)
	{
		try
		{
			//1
			//2
			getConection();
			//3
			//?参数                                                                                                                                                       1 2 3 4 5 6
			//String sql="insert into users(uname,upwd,hotelid,state,prompt,answer) values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			//给?参数赋值:参数索引号从1开始..从左到右数
			//
			if(params!=null)
			{
				for(int i=0;i<params.length;i++)
				{
					pst.setObject(i+1, params[i]);
				}
			}
			
			//4
			pst.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			//5
			close();
		}
		
	}
	
	/**
	 * 查询select语句
	 * @param sql:对应select语句
	 * @param params 可变参数
	 * @return 返回查询结果集 ResultSet
	 */
	 public static ResultSet executeQuery(String sql,Object ... params)
	 {
		 try
		 {
			 //1
			 //2
		 	getConection();
		 	//3
			PreparedStatement pst=conn.prepareStatement(sql);
			//给?参数赋值:参数索引号从1开始..从左到右数
			//
			if(params!=null)
			{
				for(int i=0;i<params.length;i++)
				{
					pst.setObject(i+1, params[i]);
				}
			}

			//4:执行
			rs=pst.executeQuery();
		 }
		 catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	 }
	 
	 /**
	  * 查询select语句
	  * @param <T>  泛型方法
	  * @param clazz 反射入口
	  * @param sql select语句
	  * @param params 动态参数
	  * @return
	  */
	 public static <T>  List<T> executeQuery(Class<T> clazz,String sql,Object ... params)
	 {
		 
		 //集合
		List<T> list=new ArrayList<T>();
		 try
		 {
			 //1
			 //2
		 	getConection();
		 	//3
			PreparedStatement pst=conn.prepareStatement(sql);
			//给?参数赋值:参数索引号从1开始..从左到右数
			//
			if(params!=null)
			{
				for(int i=0;i<params.length;i++)
				{
					pst.setObject(i+1, params[i]);
				}
			}

			//4:执行
			rs=pst.executeQuery();
			
			//
			while(rs.next())
			{
				//创建对象
				T object=clazz.newInstance();
				//Users users=new Users();
		
				//把users添加到list集合中
				//得到所有的属性
				Field[] fields=clazz.getDeclaredFields();
				//遍历fields(所有属性)
				for(Field field:fields)
				{
					//Users users2=new Users(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("hotelid"), rs.getInt("state"), rs.getString("prompt"), rs.getString("answer"));
					//属性名称就是字段名称
					String name=field.getName();
					//得到属性的类型
					String type=field.getType().getSimpleName();
					//给对应的属性赋值
					//打开访问权限
					field.setAccessible(true);
					
					/////////////////////////////////
					//判断属性是否有TableField注解 
					if(field.isAnnotationPresent(TableField.class))
					{
						//得到TableField注解 
						TableField tableField=field.getAnnotation(TableField.class);
						//判断
						if(tableField.required()==false)
						{
							continue;
						}
					}
					/////////////////////////////////
					
					switch (type) {
					case "String":
						//users2.setUname(rs.getString("uname"));
						field.set(object, rs.getString(name));
						break;
					case "int":
						field.set(object, rs.getInt(name));
						break;
					case "Integer":
						field.set(object, rs.getInt(name));
						break;
					case "double":
						field.set(object, rs.getDouble(name));
						break;
					case "Double":
						field.set(object, rs.getDouble(name));
						break;
					}
					
				}		
				//把object添加到list集合中
				list.add(object);
			}
			
		 }
		 catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		return list;
	 }
	 
	 
	 /**
	  * 执行一列一行的查询
	  * @param sql 对应语句 select count,select max,select sum,select avg,select min语句
	  * @param params 可变参数
	  * @return
	  */
	 public static int uniqueValue(String sql,Object ... params)
	 {
		 int count=0;//条数的初值
		 try
		 {
			 //1
			 //2
		 	getConection();
		 	//3
			PreparedStatement pst=conn.prepareStatement(sql);
			//给?参数赋值:参数索引号从1开始..从左到右数
			//
			if(params!=null)
			{
				for(int i=0;i<params.length;i++)
				{
					pst.setObject(i+1, params[i]);
				}
			}

			//4:执行
			rs=pst.executeQuery();
			//读取下一条
			rs.next();
			count=rs.getInt(1);
			
		 }
		 catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	 }
	 
	 
	 
	/**
	 * 释放资源
	 */
	public static void close()
	{
		try
		{
			if(conn!=null) conn.close();
			if(rs!=null) rs.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
