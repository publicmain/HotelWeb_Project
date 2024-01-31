package com.as.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.as.dao.HotelDao;
import com.as.domain.Hotel;
import com.as.util.Common;
import com.as.util.DBUitl;


/**
 * 酒店数据访问层接口实现
 * @author user
 *
 */
public class HotelDaoImpl implements HotelDao {

	@Override
	public void insert(Hotel hotel) {
		// TODO Auto-generated method stub
		Object[] params= {
				hotel.getName(),
				hotel.getTel(),
				hotel.getAddress(),
				hotel.getPicture(),
				hotel.getCityid()
		};
		String sql="insert into hotel(name,tel,address,picture,cityid) values(?,?,?,?,?)";
		DBUitl.executeUpdate(sql, params);
	}

	@Override
	public void updateById(Hotel hotel) {
		// TODO Auto-generated method stub
		Object[] params= {
				hotel.getName(),
				hotel.getTel(),
				hotel.getAddress(),
				hotel.getPicture(),
				hotel.getCityid(),
				hotel.getId()
		};
		String sql="update hotel set name=?,tel=?,address=?,picture=?,cityid=? where id=?";
		DBUitl.executeUpdate(sql, params);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		String sql="delete from hotel where id=?";
		DBUitl.executeUpdate(sql, id);
	}

	@Override
	public Hotel selectById(int id) {
		// TODO Auto-generated method stub
		String sql="select * from viewhotel where id=?";
		List<Hotel> list=DBUitl.executeQuery(Hotel.class, sql, id);
		return list.size()>0?list.get(0):null;
	}

	@Override
	public List<Hotel> select(int currPage,Hotel hotel) {
//		select * from viewhotel
//		 where 1=1 and name like '%%'
//								and tel like '%%'
//								and address like '%%'
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select * from viewhotel where 1=1");
		if(hotel.getName()!=null && !hotel.getName().equals(""))
		{
			sb.append(" and  name like ?");
			params.add("%"+hotel.getName()+"%");
		}
		
		if(hotel.getTel()!=null && !hotel.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+hotel.getTel()+"%");
		}
		
		if(hotel.getAddress()!=null && !hotel.getAddress().equals(""))
		{
			sb.append(" and address like ?");
			params.add("%"+hotel.getAddress()+"%");
		}
		//cityname='沈阳市
		if(hotel.getCityname()!=null && !hotel.getCityname().equalsIgnoreCase(""))
		{
			sb.append(" and cityname=?" );
			params.add(hotel.getCityname());
		}
		//sb.append(" order by addtime desc");
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);
		
		System.out.println("sql:"+sb.toString());
		List<Hotel> list=DBUitl.executeQuery(Hotel.class, sb.toString(), params.toArray());
		return list;
	}

	@Override
	public int getRowCount(Hotel hotel)
	{
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select count(*) from viewhotel where 1=1");
		if(hotel.getName()!=null && !hotel.getName().equals(""))
		{
			sb.append(" and  name like ?");
			params.add("%"+hotel.getName()+"%");
		}
		
		if(hotel.getTel()!=null && !hotel.getTel().equals(""))
		{
			sb.append("  and tel like ?");
			params.add("%"+hotel.getTel()+"%");
		}
		
		if(hotel.getAddress()!=null && !hotel.getAddress().equals(""))
		{
			sb.append(" and address like ?");
			params.add("%"+hotel.getAddress()+"%");
		}
		System.out.println("sql:"+sb.toString());
		return DBUitl.uniqueValue(sb.toString(), params.toArray());
	}

	@Override
	public Hotel selectByName(String name) {
		String sql="select * from viewhotel where name=?";
		List<Hotel> list=DBUitl.executeQuery(Hotel.class, sql, name);
		return list.size()>0?list.get(0):null;
		
	}
}
