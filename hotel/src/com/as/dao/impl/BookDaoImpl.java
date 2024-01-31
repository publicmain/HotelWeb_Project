package com.as.dao.impl;


import java.util.ArrayList;
import java.util.List;

import com.as.dao.BookDao;
import com.as.domain.Book;
import com.as.util.Common;
import com.as.util.DBUitl;

/**
 * 预约的数据访问层接口实现类
 * @author user
 *
 */
public class BookDaoImpl  implements BookDao {

	@Override
	public void insert(Book book) {
		Object[] params= {
				book.getHotelid(),
				book.getMemberid(),
				book.getPersoncount(),
				book.getRoomcount(),
				book.getDaycount(),
				book.getBegintime(),
				book.getEndtime(),
				book.getRoomtypeid(),
				book.getMoney()
		};
		String sql="insert into book(hotelid,memberid,personcount,roomcount,daycount,begintime,endtime,roomtypeid,money)values(?,?,?,?,?,?,?,?,?)";
		
		DBUitl.executeUpdate(sql, params);
	}

	@Override
	public void deleteByid(int id) {
		String sql="delete from book where id=?";
		DBUitl.executeUpdate(sql, id);
		
	}

	
	@Override
	public Book selectById(int id) {
		String sql="select * from viewbook where id=?";
		List<Book> list=DBUitl.executeQuery(Book.class, sql, id);
		return list.size()>0?list.get(0):null;
	}

	@Override
	public List<Book> select(int currPage, Book book) {
//		select * from viewbook 
//		where 1=1 and uname like '%%'
//							and roomtypename like '%%'
//							and tel like '%%'
//							and idcard like '%%'
//
//							and begintime>='2020-01-01' and begintime <='2023-09-09'
		
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select * from viewbook  where 1=1");
		if(book.getRoomtypename()!=null && !book.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+book.getRoomtypename()+"%");
		}
		
		if(book.getUname()!=null && !book.getUname().equals(""))
		{
			sb.append(" and uname like ?");
			params.add("%"+book.getUname()+"%");
		}
		
		if(book.getTel()!=null && !book.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+book.getTel()+"%");
		}
		
		if(book.getIdcard()!=null && !book.getIdcard().equals(""))
		{
			sb.append(" and idcard like ?");
			params.add("%"+book.getIdcard()+"%");
		}
		
		if(book.getStatus()!=null && book.getStatus()!=-1)
		{
			sb.append(" and status=?");
			params.add(book.getStatus());
		}
		
			
		//预约没分配房间的条件
		if(book.getStatus()!=null && book.getStatus()!=-1)
		{
			if(book.getRoomid()!=null && book.getRoomid()==0)
			{
			//select * from viewbook where status=0 and roomid!=0
				sb.append(" and status=? and roomid=0");
				params.add(book.getStatus());
			}
		}
		//预约已分配房间的条件
		if(book.getStatus()!=null && book.getStatus()!=-1)
		{
			if(book.getRoomid()!=null && book.getRoomid()!=0)
			{
				sb.append(" and status=? and roomid!=0");
				params.add(book.getStatus());
			}
		}
		
		
		sb.append(" order by addtime desc");
		
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);
		System.out.println("sql:"+sb.toString());
		List<Book> list=DBUitl.executeQuery(Book.class, sb.toString(), params.toArray());
		
		return list;
	}

	@Override
	public int getRowCount(Book book) {
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select count(*) from viewbook  where 1=1");
		if(book.getRoomtypename()!=null && !book.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+book.getRoomtypename()+"%");
		}
		
		if(book.getUname()!=null && !book.getUname().equals(""))
		{
			sb.append(" and uname like ?");
			params.add("%"+book.getUname()+"%");
		}
		
		if(book.getTel()!=null && !book.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+book.getTel()+"%");
		}
		
		if(book.getIdcard()!=null && !book.getIdcard().equals(""))
		{
			sb.append(" and idcard like ?");
			params.add("%"+book.getIdcard()+"%");
		}
		
		//预约没分配房间的条件
				if(book.getStatus()!=null && book.getStatus()!=-1)
				{
					if(book.getRoomid()!=null && book.getRoomid()==0)
					{
					//select * from viewbook where status=0 and roomid!=0
						sb.append(" and status=? and roomid=0");
						params.add(book.getStatus());
					}
				}
				//预约已分配房间的条件
				if(book.getStatus()!=null && book.getStatus()!=-1)
				{
					if(book.getRoomid()!=null && book.getRoomid()!=0)
					{
						sb.append(" and status=? and roomid!=0");
						params.add(book.getStatus());
					}
				}
				
				
		
		System.out.println("sql:"+sb.toString());
		return DBUitl.uniqueValue(sb.toString(), params.toArray());
	}

	@Override
	public void updateStatud(int id, int status) {
		String sql="update book set status=? where id=?";
		DBUitl.executeUpdate(sql, status, id);
		
	}

	@Override
	public void updateRoomId(int id, int roomId) {
		// TODO Auto-generated method stub
		String sql="update book set roomid=? where id=?";
		DBUitl.executeUpdate(sql, roomId,id);
	}

}
