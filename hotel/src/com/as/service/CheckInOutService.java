package com.as.service;

import java.util.List;

import com.as.domain.CheckInOut;
import com.as.util.Pages;

/**
 * 入住/退房业务层接口
 * @author user
 *
 */
public interface CheckInOutService {

	/**
	 * 添加
	 * @param checkInOut
	 */
	public void append(CheckInOut checkInOut);
	
	/**
	 * 查询
	 * @param currPage
	 * @param checkInOut
	 * @return
	 */
	public Pages<CheckInOut> list(Integer currPage,CheckInOut checkInOut);
	
	/**
	 * 修改状态
	 * @param id
	 * @param status
	 */
	public void updateStatus(int id,int status);
	
	/**
	 *主键查询
	 * @param id
	 * @return
	 */
	public CheckInOut getById(int id);
}
