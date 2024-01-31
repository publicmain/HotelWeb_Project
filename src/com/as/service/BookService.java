package com.as.service;

import com.as.domain.Book;
import com.as.util.Pages;

/**
 * 预约业务层接口
 * @author user
 *
 */
public interface BookService {

	/**
	 * 预约添加
	 * @param book
	 */
	public void append(Book book);
	

	
	/**
	 * 预约删除
	 * @param id
	 */
	public void removeById(int id);
	
	/**
	 * 预约主键查询
	 * @param id
	 * @return
	 */
	public Book getById(int id);
	
	/**
	 * 预约查询
	 * @param currPage
	 * @param book
	 * @return
	 */
	public Pages<Book> list(int currPage,Book book);
	

	/**
	 * 
	 *修改预约状态
	 * @param id
	 * @param status
	 */
	public void updateStatus(int id,int status);
	
	/**
	 * 修改预约的房间id
	 * @param id
	 * @param roomId
	 */
	public void updateRoomId(int id,int roomId);
}
