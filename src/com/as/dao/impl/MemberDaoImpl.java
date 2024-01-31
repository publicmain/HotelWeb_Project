package com.as.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.DuplicateFormatFlagsException;
import java.util.List;

import com.as.dao.MemberDao;
import com.as.domain.Member;
import com.as.util.Common;
import com.as.util.DBUitl;

/**
 * MemberDao数据访问接口的实现类
 * @author user
 *
 */
public class MemberDaoImpl implements MemberDao {

	@Override
	public void insert(Member member) {
		// TODO Auto-generated method stub
		Object[] params= {
			member.getUname(),
			member.getUpwd(),
			member.getTruename(),
			member.getAge(),
			member.getTel(),
			member.getSex(),
			member.getIdcard(),
			member.getEmail(),
			member.getState()
		};
		String sql="insert into member(uname,upwd,truename,age,tel,sex,idcard,email,state) values(?,?,?,?,?,?,?,?,?)";
		DBUitl.executeUpdate(sql, params);
		
	}

	@Override
	public void updateById(Member member) {
		Object[] params= {
				member.getUpwd(),
				member.getTruename(),
				member.getAge(),
				member.getTel(),
				member.getSex(),
				member.getIdcard(),
				member.getEmail(),
				member.getState(),
				member.getUname(),
				member.getId()
				
			};
			String sql="update member set upwd=?,truename=?,age=?,tel=?,sex=?,idcard=?,email=?,state=?,uname=? where id=?";
			DBUitl.executeUpdate(sql, params);
		
	}

	@Override
	public void deleteById(Integer id) {
		String sql="delete from member where id=?";
		DBUitl.executeUpdate(sql, id);
		
	}

	@Override
	public Member selectById(int id) {
		Member member=null;
	
		try
		{
		// TODO Auto-generated method stub
		String sql="select * from member where id=?";
		ResultSet rs=DBUitl.executeQuery(sql, id);
		//读取
		if(rs.next())
		{
			//把当前行转成对象
			member=new Member(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("truename"), rs.getInt("age"), rs.getString("tel"), rs.getString("sex"), rs.getString("idcard"), rs.getString("email"), rs.getInt("state"));
			
		}
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			DBUitl.close();
		}
		return member;
	}

	@Override
	public List<Member> select(int currPage, Member member) {
		
		//存放?参数的值
		List<Object> params=new ArrayList<Object>();
		//存放查询结果
		List<Member> list=new ArrayList<Member>();
		//select * from member where 1=1
		//and  uname like '%%' 
		//and tel like '%%' 
		//and idcard like '%%' 
		//and state=1 
		// and sex='男'
		//	limit (n-1)*5,5
			StringBuilder sb=new StringBuilder();
			sb.append("select * from member where 1=1");
			
			if(member.getUname()!=null && !member.getUname().equals("")) {
				sb.append(" and  uname like ? ");
				params.add("%"+member.getUname()+"%");
			}
			
			if(member.getIdcard()!=null && !member.getIdcard().equals("")) {
				sb.append(" and  idcard like ? ");
				params.add("%"+member.getIdcard()+"%");
			}
			
			if(member.getTel()!=null && !member.getTel().equals("")) {
				sb.append(" and  tel like ? ");
				params.add("%"+member.getTel()+"%");
			}
			
			if(member.getState()!=-1)
			{
				sb.append(" and state=?");
				params.add(member.getState());
				
			}
			
			if(member.getSex()!=null && !member.getSex().equals(""))
			{
				sb.append(" and sex=?");
				params.add(member.getSex());
			}
			
			//判断是否分页
			if(currPage>=1)
				sb.append(" limit "+(currPage-1)*Common.PAGESIZE+","+Common.PAGESIZE);
			
			list=DBUitl.executeQuery(Member.class,sb.toString(), params.toArray());
		
			return list;
	}

	@Override
	public Member login(Member member) {
		Member member2=null;
		try
		{
			String sql="select * from member where uname=? and upwd=?";
			ResultSet rs=DBUitl.executeQuery(sql, member.getUname(),member.getUpwd());
			//读取
			if(rs.next())
			{
				//把当前行转成对象
				member2=new Member(rs.getInt("id"), rs.getString("addtime"), rs.getString("uname"), rs.getString("upwd"), rs.getString("truename"), rs.getInt("age"), rs.getString("tel"), rs.getString("sex"), rs.getString("idcard"), rs.getString("email"), rs.getInt("state"));
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			DBUitl.close();	
		}
		return member2;
	}

	@Override
	public int getRowCount(Member member) {
		
		//存放?参数的值
		List<Object> params=new ArrayList<Object>();
		StringBuilder sb=new StringBuilder();
		sb.append("select count(*) from member where 1=1");
		
		if(member.getUname()!=null && !member.getUname().equals("")) {
			sb.append(" and  uname like ? ");
			params.add("%"+member.getUname()+"%");
		}
		
		if(member.getIdcard()!=null && !member.getIdcard().equals("")) {
			sb.append(" and  idcard like ? ");
			params.add("%"+member.getIdcard()+"%");
		}
		
		if(member.getTel()!=null && !member.getTel().equals("")) {
			sb.append(" and  tel like ? ");
			params.add("%"+member.getTel()+"%");
		}
		
		if(member.getState()!=-1)
		{
			sb.append(" and state=?");
			params.add(member.getState());
			
		}
		
		if(member.getSex()!=null && !member.getSex().equals(""))
		{
			sb.append(" and sex=?");
			params.add(member.getSex());
		}
		int count=DBUitl.uniqueValue(sb.toString(), params.toArray());
		return count;
	}

}
