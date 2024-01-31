package com.as.service;

import com.as.domain.RoomType;
import com.as.util.Pages;

/**
 * 房间类型的业务层接口
 * @author user
 *
 */
public interface RoomTypeService {
	/**
	 * 房间类型添加
	 * @param roomType
	 */
	public void append(RoomType roomType);
	
	/**
	 * 房间类型修改
	 * @param roomType
	 */
	public void modifyById(RoomType roomType);
	
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
	public RoomType getById(int id);
	
	/**
	 * 查询
	 * @param currPage
	 * @param roomType
	 * @return
	 */
	public  Pages<RoomType> list(int currPage,RoomType roomType);
	
}
