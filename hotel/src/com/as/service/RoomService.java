package com.as.service;

import com.as.domain.Room;
import com.as.util.Pages;

/**
 * 房间的业务层接口
 * @author user
 *
 */
public interface RoomService {
	/**
	 * 房间添加
	 * @param room
	 */
	public void append(Room room);
	
	/**
	 * 房间修改
	 * @param room
	 */
	public void modifyById(Room room);
	
	/**
	 * 主键删除
	 * @param id
	 */
	public void removeById(Integer id);
	
	/**
	 * 主键查询
	 * @param id
	 * @return
	 */
	public Room getById(int id);
	
	/**
	 * 查询
	 * @param currPage
	 * @param room
	 * @return
	 */
	public  Pages<Room> list(int currPage,Room room);
	
	/**
	 * 修改状态
	 * @param id
	 * @param stauts
	 */
	public void updateStatus(int id,int status);
	
}
