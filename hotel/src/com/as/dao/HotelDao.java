package com.as.dao;

import java.util.List;

import com.as.domain.Hotel;

/**
 * 酒店数据访问层接口
 * @author user
 *
 */
public interface HotelDao {

	/**
	 * 酒店添加
	 * @param hotel
	 */
	public void insert(Hotel hotel);
	
	/**
	 * 酒店whnt 
	 * @param hotel
	 */
	public void updateById(Hotel hotel);
	
	/**
	 * 酒店主键删除
	 * @param id
	 */
	public void deleteById(int id);
	
	/**
	 * 酒店主键查询
	 * @param id
	 * @return
	 */
	public Hotel selectById(int id);
	
	
	/**
	 * 按名称查询
	 * @param name
	 * @return
	 */
	public Hotel selectByName(String name);
	/**
	 * 酒店查询
	 * @return
	 */
	public List<Hotel> select(int currPage,Hotel hotel);
	
	/**
	 * 求记录条数
	 * @param hotel
	 * @return
	 */
	public int getRowCount(Hotel hotel);
	
	
}
