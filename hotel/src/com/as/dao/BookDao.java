package com.as.dao;


import java.util.List;

import com.as.domain.Book;

/**
 * 预约的数据访问层接口
 * @author user
 *
 */
public interface BookDao {

	/**
	 * 预约添加
	 * @param book
	 */
	public void insert(Book book);
	
//	/**
//	 * 预约修改
//	 * @param book
//	 */
//	public void updateById(Book book);
	
	/**
	 * 预约删除
	 * @param id
	 */
	public void deleteByid(int id);
	
	/**
	 * 预约主键查询
	 * @param id
	 * @return
	 */
	public Book selectById(int id);
	
	/**
	 * 预约查询
	 * @param currPage
	 * @param book
	 * @return
	 */
	public List<Book> select(int currPage,Book book);
	
	/**
	 * 查询记录条数
	 * @param book
	 * @return
	 */
	public int getRowCount(Book book);
	
	/**
	 * 
	 *修改预约状态
	 * @param id
	 * @param status
	 */
	public void updateStatud(int id,int status);
	
	/**
	 * 修改预约的房间id
	 * @param id
	 * @param roomId
	 */
	public void updateRoomId(int id,int roomId);
}
