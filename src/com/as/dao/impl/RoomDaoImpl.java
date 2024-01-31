package com.as.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.as.dao.RoomDao;
import com.as.domain.Room;
import com.as.util.Common;
import com.as.util.DBUitl;

/**
 * 房间数据访问接口实现
 * @author user
 *
 */
public class RoomDaoImpl implements RoomDao {

	@Override
	public void insert(Room room) {
		Object[] params= {
				room.getHotelid(),
				room.getRoomnum(),
				room.getRoomtypeid(),
				room.getStatus(),
				room.getTel(),
				room.getRegion(),
				room.getLocknumber()
		};
		String sql="insert into room(hotelid,roomnum,roomtypeid,status,tel,region,locknumber) values(?,?,?,?,?,?,?)";
		DBUitl.executeUpdate(sql, params);
		
	}

	@Override
	public void updateById(Room room) {
		Object[] params= {
				room.getHotelid(),
				room.getRoomnum(),
				room.getRoomtypeid(),
				room.getStatus(),
				room.getTel(),
				room.getRegion(),
				room.getLocknumber(),
				room.getId()
				
		};
		String sql="update room set hotelid=?,roomnum=?,roomtypeid=?,status=?,tel=?,region=?,locknumber=? where id=?";
		
		DBUitl.executeUpdate(sql, params);
		
	}

	@Override
	public void deleteById(Integer id) {
		String sql="delete from room where id=?";
		DBUitl.executeUpdate(sql, id);
		
	}

	@Override
	public Room selectById(int id) {
		String sql="select * from viewroom where id=?";
		List<Room> list=DBUitl.executeQuery(Room.class, sql, id);
		return list.size()>0?list.get(0):null;
	}

	@Override
	public List<Room> select(int currPage, Room room) {
		// TODO Auto-generated method stub
//		select * from viewroom 
//		where 1=1 
//		and roomtypename like '%单%' 
//		and tel like '%1%'
//		and region like '%北%'
//		and status=0
//		
//		order by addtime desc
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select * from viewroom  where 1=1");
		if(room.getRoomtypename()!=null && !room.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+room.getRoomtypename()+"%");
		}
		
		if(room.getTel()!=null && !room.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+room.getTel()+"%");
		}
		
		if(room.getRegion()!=null && !room.getRegion().equals(""))
		{
			sb.append(" and region like ?");
			params.add("%"+room.getRegion()+"%");
		}
		
		//status-->Integer (int)
		if(room.getStatus()!=null && room.getStatus()!=-1)
		{
			sb.append(" and status=?");
			params.add(room.getStatus());
		}
		
		if(room.getRoomnum()!=null && !room.getRoomnum().equals(""))
		{
			sb.append(" and roomnum=?");
			params.add(room.getRoomnum());
		}
		
		sb.append(" order by addtime desc");
		
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);
		
		List<Room> list=DBUitl.executeQuery(Room.class, sb.toString(), params.toArray());
		return list;
	}

	@Override
	public int getRowCount(Room room) {
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select count(*) from viewroom  where 1=1");
		if(room.getRoomtypename()!=null && !room.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+room.getRoomtypename()+"%");
		}
		
		if(room.getTel()!=null && !room.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+room.getTel()+"%");
		}
		
		if(room.getRegion()!=null && !room.getRegion().equals(""))
		{
			sb.append(" and region like ?");
			params.add("%"+room.getRegion()+"%");
		}
		
		//status-->Integer (int)
		if(room.getStatus()!=null && room.getStatus()!=-1)
		{
			sb.append(" and status=?");
			params.add(room.getStatus());
		}
		
		if(room.getRoomnum()!=null && !room.getRoomnum().equals(""))
		{
			sb.append(" and roomnum=?");
			params.add(room.getRoomnum());
		}
		return DBUitl.uniqueValue(sb.toString(), params.toArray());
	}

	@Override
	public void updateStatus(int id, int status) {
		// TODO Auto-generated method stub
		String sql="update room set status=? where id=?";
		DBUitl.executeUpdate(sql, status,id);
	}

}
