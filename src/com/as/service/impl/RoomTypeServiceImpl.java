package com.as.service.impl;

import java.util.List;

import com.as.dao.RoomTypeDao;
import com.as.dao.impl.RoomTypeDaoImpl;
import com.as.domain.RoomType;
import com.as.service.RoomTypeService;
import com.as.util.Common;
import com.as.util.Pages;

/**
 * 房间类型的业务层接口实现类
 * @author user
 *
 */
public class RoomTypeServiceImpl implements RoomTypeService {

	 private RoomTypeDao roomTypeDao=new RoomTypeDaoImpl(); 
	@Override
	public void append(RoomType roomType) {
		this.roomTypeDao.insert(roomType);

	}

	@Override
	public void modifyById(RoomType roomType) {
		this.roomTypeDao.updateById(roomType);

	}

	@Override
	public void removeById(Integer id) {
		this.roomTypeDao.deleteById(id);
	}

	@Override
	public RoomType getById(int id) {
		// TODO Auto-generated method stub
		return this.roomTypeDao.selectById(id);
	}

	@Override
	public Pages<RoomType> list(int currPage, RoomType roomType) {
		
		int rowCount=this.roomTypeDao.getRowCount(roomType);
		List<RoomType> list=this.roomTypeDao.select(currPage, roomType);
		Pages<RoomType> pages=new Pages<RoomType>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

}
