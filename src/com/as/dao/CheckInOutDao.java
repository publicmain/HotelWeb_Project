package com.as.dao;

import java.util.List;

import com.as.domain.CheckInOut;

/**
 * 入住/退房数据访问层接口
 * @author user
 *
 */
public interface CheckInOutDao {

	
	/**
	 * 添加
	 * @param checkInOut
	 */
	public void insert(CheckInOut checkInOut);
	
	/**
	 * 查询
	 * @param currPage
	 * @param checkInOut
	 * @return
	 */
	public List<CheckInOut> select(Integer currPage,CheckInOut checkInOut);
	
	/**
	 * 修改状态
	 * @param id
	 * @param status
	 */
	public void updateStatus(int id,int status);
	
	/**
	 * 记录条数
	 * @param checkInOut
	 * @return
	 */
	public int getRowCount(CheckInOut checkInOut);
	
	
	/**
	 * 主键查询
	 * @param id
	 * @return
	 */
	public CheckInOut selectById(int id);
}
