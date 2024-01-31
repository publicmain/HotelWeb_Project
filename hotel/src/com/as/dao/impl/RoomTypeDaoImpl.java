package com.as.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.as.dao.RoomTypeDao;
import com.as.domain.RoomType;
import com.as.util.Common;
import com.as.util.DBUitl;

public class RoomTypeDaoImpl implements RoomTypeDao {

	@Override
	public void insert(RoomType roomType) {
		
		Object[] params= {
				roomType.getHotelid(),
				roomType.getRoomtypename(),
				roomType.getBedsnumber(),
				roomType.getDayprice(),
				roomType.getHourprice(),
				roomType.getDepositmoney(),
				roomType.getPicture(),
				roomType.getTotal(),
				roomType.getNote()
		};
		String sql="insert into roomtype(hotelid,roomtypename,bedsnumber,dayprice,hourprice,depositmoney,picture,total,note) values(?,?,?,?,?,?,?,?,?)";
		DBUitl.executeUpdate(sql, params);


	}

	@Override
	public void updateById(RoomType roomType) {
		Object[] params= {
				roomType.getHotelid(),
				roomType.getRoomtypename(),
				roomType.getBedsnumber(),
				roomType.getDayprice(),
				roomType.getHourprice(),
				roomType.getDepositmoney(),
				roomType.getPicture(),
				roomType.getTotal(),
				roomType.getNote(),
				roomType.getId()
		};
		String sql="update roomtype set hotelid=?,roomtypename=?,bedsnumber=?,dayprice=?,hourprice=?,depositmoney=?,picture=?,total=?,note=? where id=?";
		DBUitl.executeUpdate(sql, params);

	}

	@Override
	public void deleteById(Integer id) {
		String sql="delete from roomtype where id=?";
		DBUitl.executeUpdate(sql, id);
		

	}

	@Override
	public RoomType selectById(int id) {
		String sql="select * from roomtype where id=?";
		List<RoomType> list=DBUitl.executeQuery(RoomType.class, sql, id);
		//判断集合中长度是否大0
		return list.size()>0?list.get(0):null;
	}

	@Override
	public List<RoomType> select(int currPage, RoomType roomType) {
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder();
		// select * from roomtypeview  where 1=1 and roomtypename like '%%' and hotelid=1
		sb.append("select * from roomtypeview  where 1=1");
		if(roomType.getRoomtypename()!=null && !roomType.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+roomType.getRoomtypename()+"%");
		}
		if(roomType.getHotelid()!=-1)
		{
			sb.append(" and hotelid=?");
			params.add(roomType.getHotelid());
		} 
		//排序order by addtime desc
		sb.append(" order by addtime desc");
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);
		System.out.println("sql:"+sb.toString());
		List<RoomType> list=DBUitl.executeQuery(RoomType.class, sb.toString(), params.toArray());
		return list;
	}

	@Override
	public int getRowCount(RoomType roomType) {
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder();
		
		sb.append("select count(*) from roomtypeview  where 1=1");
		if(roomType.getRoomtypename()!=null && !roomType.getRoomtypename().equals(""))
		{
			sb.append(" and roomtypename like ?");
			params.add("%"+roomType.getRoomtypename()+"%");
		}
		if(roomType.getHotelid()!=-1)
		{
			sb.append(" and hotelid=?");
			params.add(roomType.getHotelid());
		} 
		
		return DBUitl.uniqueValue(sb.toString(), params.toArray());
	}

}
