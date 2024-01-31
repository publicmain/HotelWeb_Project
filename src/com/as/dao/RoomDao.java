package com.as.dao;

import java.util.List;

import com.as.domain.Room;

/**
 * 房间数据访问接口(dao)
 * @author user
 *
 */
public interface RoomDao {
	/**
	 * 房间添加
	 * @param room
	 */
	public void insert(Room room);
	
	/**
	 * 房间修改
	 * @param room
	 */
	public void updateById(Room room);
	
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
	public Room selectById(int id);
	
	/**
	 * 查询
	 * @param currPage
	 * @param room
	 * @return
	 */
	public  List<Room> select(int currPage,Room room);
	
	/**
	 * 记录条数
	 * @param room
	 * @return
	 */
	public int getRowCount(Room room);
	
	/**
	 * 修改房间状态
	 * @param id  房间主键id
	 * @param status 状态 房间状态 0没有人入住 1有人入住 3预定中 4.维修中
	 */
	public void updateStatus(int id,int status);


}
