package com.as.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.as.dao.CheckInOutDao;
import com.as.domain.CheckInOut;
import com.as.util.Common;
import com.as.util.DBUitl;

/**
 * 入住/退房数据访问层接口实现
 * @author user
 *
 */
public class CheckInOutDaoImpl implements CheckInOutDao {

	@Override
	public void insert(CheckInOut checkInOut) {
		
		Object[] params= {
				checkInOut.getIntime(),
				checkInOut.getOuttime(),
				checkInOut.getMemberid(),
				checkInOut.getName(),
				checkInOut.getSex(),
				checkInOut.getTel(),
				checkInOut.getIdcard(),
				checkInOut.getRoomid(),
				checkInOut.getUserid(),
				checkInOut.getPay()
		};
		String sql="insert into checkinout(intime,outtime,memberid,name,sex,tel,idcard,roomid,userid,pay) values(?,?,?,?,?,?,?,?,?,?)";
		
		DBUitl.executeUpdate(sql, params);

	}

	@Override
	public List<CheckInOut> select(Integer currPage, CheckInOut checkInOut) {
//		select * from viewcheckinout  where 1=1
//				and tel like '%%'
//				and idcard like '%%'
//				and name like '%%'
//				and status=0
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select * from viewcheckinout  where 1=1");
		if(checkInOut.getIdcard()!=null && !checkInOut.getIdcard().equals(""))
		{
			sb.append(" and idcard like ?");
			params.add("%"+checkInOut.getIdcard()+"%");
					
		}
		
		if(checkInOut.getTel()!=null && !checkInOut.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+checkInOut.getTel()+"%");
					
		}
		if(checkInOut.getName()!=null && !checkInOut.getName().equals(""))
		{
			sb.append(" and name like ?");
			params.add("%"+checkInOut.getName()+"%");
					
		}
		
		if(checkInOut.getStatus()!=null && checkInOut.getStatus()!=-1)
		{
			sb.append(" and status=?");
			params.add(checkInOut.getStatus());
		}
		sb.append(" order by addtime desc");
		
		if(currPage>=1)
			sb.append(" limit "+(currPage-1)* Common.PAGESIZE+","+Common.PAGESIZE);
		
		
		return DBUitl.executeQuery(CheckInOut.class, sb.toString(),params.toArray());
	}

	@Override
	public void updateStatus(int id, int status) {
		String sql="update checkinout set status=? where id=?";
		DBUitl.executeUpdate(sql, status,id);

	}

	@Override
	public int getRowCount(CheckInOut checkInOut) {
		
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder("select count(*) from viewcheckinout  where 1=1");
		if(checkInOut.getIdcard()!=null && !checkInOut.getIdcard().equals(""))
		{
			sb.append(" and idcard like ?");
			params.add("%"+checkInOut.getIdcard()+"%");
					
		}
		
		if(checkInOut.getTel()!=null && !checkInOut.getTel().equals(""))
		{
			sb.append(" and tel like ?");
			params.add("%"+checkInOut.getTel()+"%");
					
		}
		if(checkInOut.getName()!=null && !checkInOut.getName().equals(""))
		{
			sb.append(" and name like ?");
			params.add("%"+checkInOut.getName()+"%");
					
		}
		
		if(checkInOut.getStatus()!=null && checkInOut.getStatus()!=-1)
		{
			sb.append(" and status=?");
			params.add(checkInOut.getStatus());
		}
		
		return DBUitl.uniqueValue(sb.toString(), params.toArray());
		
	}

	@Override
	public CheckInOut selectById(int id) {
		
		String sql="select * from viewcheckinout where id=?";
		List<CheckInOut> list=DBUitl.executeQuery(CheckInOut.class, sql, id);
		return list.size()>0?list.get(0):null;
	}

}
