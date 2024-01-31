package com.as.service.impl;

import java.util.List;

import com.as.dao.RoomDao;
import com.as.dao.impl.RoomDaoImpl;
import com.as.domain.Room;
import com.as.service.RoomService;
import com.as.util.Common;
import com.as.util.Pages;

/**
 * 房间的业务层接口的实现
 * @author user
 *
 */
public class RoomServiceImpl implements RoomService {
	//view-serive-dao
	private RoomDao roomDao=new RoomDaoImpl();

	@Override
	public void append(Room room) {
	this.roomDao.insert(room);

	}

	@Override
	public void modifyById(Room room) {
		this.roomDao.updateById(room);

	}

	@Override
	public void removeById(Integer id) {
		this.roomDao.deleteById(id);

	}

	@Override
	public Room getById(int id) {
		// TODO Auto-generated method stub
		
		return this.roomDao.selectById(id);
	}

	@Override
	public Pages<Room> list(int currPage, Room room) {
		
		int rowCount=this.roomDao.getRowCount(room);
		List<Room> list=this.roomDao.select(currPage, room);
		Pages<Room> pages=new Pages<Room>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

	@Override
	public void updateStatus(int id, int status) {
		this.roomDao.updateStatus(id, status);

	}

}
