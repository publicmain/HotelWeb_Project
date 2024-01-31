package com.as.service.impl;

import java.util.List;

import com.as.dao.MemberDao;
import com.as.dao.impl.MemberDaoImpl;
import com.as.domain.Member;
import com.as.service.MemberService;
import com.as.util.Common;
import com.as.util.Pages;

/**
 * 会员业务层接口的实现类
 * @author user
 *
 */
public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao=new MemberDaoImpl();
	@Override
	public void append(Member member) {
		this.memberDao.insert(member);
		
	}

	@Override
	public void modifyById(Member member) {
		this.memberDao.updateById(member);
		
	}

	@Override
	public void removeById(int id) {
		this.memberDao.deleteById(id);
		
	}

	@Override
	public Member getById(int id) {
		// TODO Auto-generated method stub
		return this.memberDao.selectById(id);
	}

	@Override
	public Pages<Member> list(int currPage, Member member) {
		
		int rowCount=this.memberDao.getRowCount(member);
		List<Member> list=this.memberDao.select(currPage, member);
		Pages<Member> pages=new Pages<Member>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

	@Override
	public Member login(Member member) {
		// TODO Auto-generated method stub
		//state 状态1-正常 2-加锁 3-用户名称或密码不对
		Member member2=this.memberDao.login(member);
		
		if(member2!=null)
		{
			//帐号和密码是正确的
			
			//判断状态
			if(member2.getState()==1)
			{
				member.setState(1);//1-正常 
			}
			else
			{
				member.setState(2);//2-加锁
			}
		}
		else
		{
			//member2为null
			//创建对象
			member2=new Member();
			//帐号和密码是不正确的
			member2.setState(3); //3-用户名称或密码不对
			
		}
		return member2;
	}

}
