package com.as.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.as.dao.UsersDao;
import com.as.domain.Users;
import com.as.util.Common;
import com.as.util.DBUitl;

/**
 * 对users表操作的类
 * dao--数据访问层
 * crud 操作:添加,查询,修改,删除
 * 
 * usersDao接口的实现类
 * @author user
 *
 */
public class UsersDaoImpl  implements UsersDao{
	
	/**
	 * 用户添加
	 * @param users
	 */
	@Override
	public void insert(Users users)
	{
		//1>sql语句
		String sql="insert into users(uname,upwd,hotelid,state,prompt,answer) values(?,?,?,?,?,?)";
		//2>调用方法
		DBUitl.executeUpdate(sql, users.getUname(),users.getUpwd(),users.getHotelid(),users.getState(),users.getPrompt(),users.getAnswer());
	}
	
	/**
	 * 按用户id删除
	 * @param id
	 */
	@Override
	public void deleteById(int id)
	{
		String sql="delete from users where id=?";
		DBUitl.executeUpdate(sql, id);
	}
	
	
	/**
	 * 主键修改
	 * @param users
	 */
	@Override
	public void updateById(Users users)
	{
		String sql="update users set uname=?,upwd=?,hotelid=?,state=?,prompt=?,answer=? where id=?";
		DBUitl.executeUpdate(sql, users.getUname(),users.getUpwd(),users.getHotelid(),users.getState(),users.getPrompt(),users.getAnswer(),users.getId());
	}
	
	/**
	 * 查询记录条数
	 * @return
	 */
	@Override
	public int getRowCount(Users users)
	{
		//存放对应?参数的值的集合
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder();
		sb.append("select count(*) from users where 1=1");
		//动态接接sql语句
		if(users.getUname()!=null && !users.getUname().equals(""))
		{
			sb.append(" and uname like ?");
			params.add("%"+users.getUname()+"%");
		}
		
		if(users.getState()!=-1)
		{
			sb.append(" and state=?");
			params.add(users.getState());
		}
		
		if(users.getPrompt()!=null && !users.getPrompt().equals(""))
		{
			sb.append(" and prompt like ?");
			params.add("%"+users.getPrompt()+"%");
		}
		
		
		int rowCount=DBUitl.uniqueValue(sb.toString(),params.toArray());
		return rowCount;
	}
	
	/**
	 * 查询所有
	 * @return
	 */
//	@Override
//	public ResultSet select()
//	{
//		ResultSet rs=null;
//		try
//		{
//		String sql="select * from users";
//		rs=DBUitl.executeQuery(sql);
//		
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//		}
////		finally {
////			
////			DBUitl.close();
////		}
//		return rs;
//	}
	
	/**
	 * 查询所有
	 * @return
	 */
	@Override
	public List<Users> select()
	{
		//集合
		List<Users> list=new ArrayList<Users>();
		
		try
		{
			String sql="select * from users";
			ResultSet rs=DBUitl.executeQuery(sql);
			while(rs.next())
			{
				//读取每行记录转成users对象存储
				//把当前行对应的列的值,赋给users的对象属性
				//一条记录转成users对象
				Users users=new Users(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("hotelid"), rs.getInt("state"), rs.getString("prompt"), rs.getString("answer"));
				
				//把users添加到list集合中
				list.add(users);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{

			//关闭
			DBUitl.close();
		}
		
		return list;
	}

	
	@Override
	public List<Users> select2(int currpage,Users users)
	{
		//存放对应?参数的值的集合
		List<Object> params=new ArrayList<Object>();
		//集合
		List<Users> list=new ArrayList<Users>();
		
		try
		{

			
//		select * from users  where 1=1
//		select * from users where 1=1 and uname like '%a%'
//		select * from users where 1=1 and  uname like '%a%' and state=1
			//select * from users where 1=1 and uname like '%a%' and state=1 and prompt like '%1%'			
			StringBuilder sb=new StringBuilder();
			sb.append("select * from users where 1=1");
			//动态接接sql语句
			if(users.getUname()!=null && !users.getUname().equals(""))
			{
				sb.append(" and uname like ?");
				params.add("%"+users.getUname()+"%");
			}
			
			if(users.getState()!=-1)
			{
				sb.append(" and state=?");
				params.add(users.getState());
			}
		
			if(users.getPrompt()!=null && !users.getPrompt().equals(""))
			{
				sb.append(" and prompt like ?");
				params.add("%"+users.getPrompt()+"%");
			}
			//判断是否分页
			if(currpage>=1)
				sb.append(" limit "+(currpage-1)*Common.PAGESIZE+","+Common.PAGESIZE);		
			//select * from 表 limit(n-1)*每页大小,每页大小
			//select * from users limit 0,5
			//String sql="select * from users limit "+(currpage-1)*Common.PAGESIZE+","+Common.PAGESIZE;
			System.out.println("sql:"+sb.toString());
			//params.toArray()把集合转成数组
			Object[] p=params.toArray();
			//ResultSet rs=DBUitl.executeQuery(sb.toString(),params.toArray());
			ResultSet rs=DBUitl.executeQuery(sb.toString(),p);
			while(rs.next())
			{
				//读取每行记录转成users对象存储
				//把当前行对应的列的值,赋给users的对象属性
				//一条记录转成users对象
				Users users2=new Users(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("hotelid"), rs.getInt("state"), rs.getString("prompt"), rs.getString("answer"));
				//users2.setUname(rs.getString("uname"));
				//users2.setId(rs.getInt("id"));
				//把users添加到list集合中
				list.add(users2);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{

			//关闭
			DBUitl.close();
		}
		
		return list;
	}
	
	
	@Override
	public Users selectById(int id) {
		//创建对象,赋null
		Users users=null;
		try
		{
			
			//select语句
			String sql="select * from users where id=?";
			//调用dbutl类中查询的方法.
			ResultSet rs=DBUitl.executeQuery(sql, id);
			
			//只有一条记录,不需要循环
			if(rs.next())
			{
				//把当前行对应的字段的值,赋给对应对象的属性
				users=new Users(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("hotelid"), rs.getInt("state"), rs.getString("prompt"), rs.getString("answer"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			//关闭
			DBUitl.close();
		}
		
		return users;
	}

	@Override
	public Users login(Users users) {
		// TODO Auto-generated method stub
		Users users2=null;
		try
		{
			String sql="select * from users where uname=? and upwd=?";
			ResultSet rs=DBUitl.executeQuery(sql, users.getUname(),users.getUpwd());
			
			//只有一条记录,不需要循环
			if(rs.next())
			{
				//把当前行对应的字段的值,赋给对应对象的属性
				users2=new Users(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("hotelid"), rs.getInt("state"), rs.getString("prompt"), rs.getString("answer"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBUitl.close();
		}
		return users2;
	}

	@Override
	public List<Users> select(int currPage, Users users)
	{
		List<Users> list=new ArrayList<Users>();
		List<Object> params=new ArrayList<Object>();		
		StringBuilder sb=new StringBuilder();
		sb.append("select * from users where 1=1");
		//动态接接sql语句
		if(users.getUname()!=null && !users.getUname().equals(""))
		{
			sb.append(" and uname like ?");
			params.add("%"+users.getUname()+"%");
		}
		
		if(users.getState()!=-1)
		{
			sb.append(" and state=?");
			params.add(users.getState());
		}
	
		if(users.getPrompt()!=null && !users.getPrompt().equals(""))
		{
			sb.append(" and prompt like ?");
			params.add("%"+users.getPrompt()+"%");
		}
		sb.append(" order by addtime desc");
		
		//判断是否分页
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);		
		//select * from 表 limit(n-1)*每页大小,每页大小
		//select * from users limit 0,5
		//String sql="select * from users limit "+(currpage-1)*Common.PAGESIZE+","+Common.PAGESIZE;
		System.out.println("sql:"+sb.toString());
		//params.toArray()把集合转成数组
		Object[] p=params.toArray();
		list=DBUitl.executeQuery(Users.class, sb.toString(), params.toArray());
		return list;
	}

	@Override
	public Users selectByUname(String uname) {
		// TODO Auto-generated method stub
		String sql="select * from users where uname=?";
		List<Users> list=DBUitl.executeQuery(Users.class, sql, uname);
		return list.size()>0?list.get(0):null;
	}

	@Override
	public void updateState(int id) {
		String sql="update users set state=if(state=1,2,1) where id=?";
		DBUitl.executeUpdate(sql, id);
		
	}

}
