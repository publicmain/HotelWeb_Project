package com.as.dao;

import java.util.List;

import com.as.domain.RoomType;

public interface RoomTypeDao {
	/**
	 * 房间类型添加
	 * @param roomType
	 */
	public void insert(RoomType roomType);
	
	/**
	 * 房间类型修改
	 * @param roomType
	 */
	public void updateById(RoomType roomType);
	
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
	public RoomType selectById(int id);
	
	/**
	 * 查询
	 * @param currPage
	 * @param roomType
	 * @return
	 */
	public  List<RoomType> select(int currPage,RoomType roomType);
	
	/**
	 * 记录条数
	 * @param roomType
	 * @return
	 */
	public int getRowCount(RoomType roomType);

	
}
