package com.as.dao;

import java.util.List;

import com.as.domain.Member;

/**
 * 会员数据访问层接口
 * @author user
 *
 */
public interface MemberDao {
	
	/**
	 * 会员添加
	 * @param member
	 */
	public void insert(Member member);
	
	/**
	 * 会员修改
	 * @param member
	 */
	public void updateById(Member member);
	
	/**
	 * 主键删除
	 * @param id
	 */
	public void deleteById(Integer id);
	
	/**
	 * 主键查询
	 * @param id
	 * @return
	 */
	public Member selectById(int id);
	
	/**
	 * 查询
	 * @param currPage
	 * @param member
	 * @return
	 */
	public  List<Member> select(int currPage,Member member);
	
	/**
	 * 记录条数
	 * @param member
	 * @return
	 */
	public int getRowCount(Member member);
	/**
	 * 会员登录
	 * @param member
	 * @return
	 */
	public  Member login(Member member);
	

}
