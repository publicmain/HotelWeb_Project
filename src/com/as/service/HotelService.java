package com.as.service;

import java.util.List;

import com.as.domain.Hotel;
import com.as.util.Pages;

/**
 * 酒店业务层接口
 * @author user
 *
 */
public interface HotelService {

	/**
	 * 酒店添加
	 * @param hotel
	 */
	public void append(Hotel hotel);
	
	/**
	 * 酒店whnt 
	 * @param hotel
	 */
	public void modifyById(Hotel hotel);
	
	/**
	 * 酒店主键删除
	 * @param id
	 */
	public void removeById(int id);
	
	/**
	 * 酒店主键查询
	 * @param id
	 * @return
	 */
	public Hotel getById(int id);
	
	/**
	 * 酒店查询
	 * @return
	 */
	public Pages<Hotel> list(int currPage,Hotel hotel);
	
	/**
	 * 按名称查询
	 * @param name
	 * @return
	 */
	public Hotel selectByName(String name);
	
	

}
