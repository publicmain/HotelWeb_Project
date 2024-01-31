package com.as.service.impl;

import java.util.List;

import com.as.dao.HotelDao;
import com.as.dao.impl.HotelDaoImpl;
import com.as.domain.Hotel;
import com.as.service.HotelService;
import com.as.util.Common;
import com.as.util.Pages;

/**
 * 酒店业务层接口实现
 * @author user
 *
 */
public class HotelServiceImpl implements HotelService {
	private HotelDao hotelDao=new HotelDaoImpl();

	@Override
	public void append(Hotel hotel) {
		this.hotelDao.insert(hotel);

	}

	@Override
	public void modifyById(Hotel hotel) {
		this.hotelDao.updateById(hotel);

	}

	@Override
	public void removeById(int id) {
		this.hotelDao.deleteById(id);

	}

	@Override
	public Hotel getById(int id) {
		
		return this.hotelDao.selectById(id);
	}

	@Override
	public Pages<Hotel> list(int currPage, Hotel hotel) {
		// TODO Auto-generated method stub
		int rowCount=this.hotelDao.getRowCount(hotel);
		List<Hotel> list=this.hotelDao.select(currPage, hotel);
		Pages<Hotel> pages=new Pages<Hotel>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

	@Override
	public Hotel selectByName(String name) {
		// TODO Auto-generated method stub
		return this.hotelDao.selectByName(name);
	}

}
