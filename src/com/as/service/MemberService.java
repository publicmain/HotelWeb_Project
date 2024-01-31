package com.as.service;

import com.as.domain.Member;
import com.as.util.Pages;

/**
 * 会员表的业务层接口
 * @author user
 *
 */
public interface MemberService {

	
	/**
	 * 会员添加
	 * @param member
	 */
	public void append(Member member);
	
	/**
	 * 会员修改
	 * @param member
	 */
	public void modifyById(Member member);
	
	/**
	 * 主键删除
	 * @param id
	 */
	public void removeById(int id);
	
	/**
	 * 主键查询
	 * @param id
	 * @return
	 */
	public Member getById(int id);
	
	/**
	 * 分页查询
	 * @param currPage
	 * @param member
	 * @return
	 */
	public Pages<Member> list(int currPage,Member member);
	
	/**
	 * 会员登录
	 * @param member
	 * @return
	 */
	public Member login(Member member);
	
	
}
