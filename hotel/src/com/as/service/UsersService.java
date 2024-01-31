package com.as.service;

import java.util.List;

import com.as.domain.Users;
import com.as.util.Pages;

/**
 * 用户的业务层接口
 * @author user
 *
 */
public interface UsersService {

	/**
	 * 用户添加
	 * @param users
	 */
	public void append(Users users);
	
	/**
	 * 用户主键修改
	 * @param users
	 */
	public void modifyById(Users users);
	
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
	public Users getById(int id);
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Users> list();
	
	
	/**
	 * 分页查询
	 * @param currPage
	 * @param users
	 * @return
	 */
	public Pages<Users> list(int currPage,Users users);
	
	/**
	 * 用户登录
	 * @param users
	 * @return
	 */
	public Users login(Users users);
	
	/**
	 * 按姓名查询
	 * @param uname
	 * @return
	 */
	 public Users selectByUname(String uname);
	 
		/**
		 * 修改用户状态
		 * @param id
		 * state 1-正常 2-加锁
		 */
		public void updateState(int id);
}
