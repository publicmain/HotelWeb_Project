package com.as.dao;

import java.sql.ResultSet;
import java.util.List;

import com.as.domain.Users;

//数据访问层接命名:表名(实体类名称)+Dao

/**
 * 用户数据访问层接口
 * @author user
 *
 */
public interface UsersDao {

	/**
	 * 用户添加
	 * @param users
	 */
	public void insert(Users users);
	
	/**
	 * 主键删除
	 * @param id
	 */
	public void deleteById(int id);
	
	/**
	 * 主键修改
	 * @param users
	 */	
	public void updateById(Users users);
	
	/**
	 * 查询记录条数
	 * @param users Users的对象
	 * @return
	 */
	public int getRowCount(Users users);

	/**
	 * 查询所有
	 * @return
	 */
	public List<Users> select();
	
	/**
	 * 查询分页
	 * @param currPage 当前页
	 * @param users Users的对象
	 * @return
	 */
	public List<Users> select2(int currPage,Users users);
	
	public List<Users> select(int currPage,Users users);
	
	
	/**
	 * 主键查询
	 * @param id
	 * @return
	 */
	public Users selectById(int id);
	
//	public ResultSet select();
	
	/**
	 * 用户登录
	 * @param users
	 * @return
	 */
	public Users login(Users users);
	
	/**
	 * 按用户名称查询
	 * @param uname
	 * @return
	 */
	public Users selectByUname(String uname);
	
	/**
	 * 修改用户状态
	 * @param id
	 *1-正常 2-加锁
	 */
	public void updateState(int id);
	
}
