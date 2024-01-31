package com.as.service.impl;

import java.util.List;

import com.as.dao.CheckInOutDao;
import com.as.dao.impl.CheckInOutDaoImpl;
import com.as.domain.CheckInOut;
import com.as.service.CheckInOutService;
import com.as.util.Common;
import com.as.util.Pages;

/**
 * 入住/退房业务层接口实现
 * @author user
 *
 */
public class CheckInOutServiceImpl implements CheckInOutService {

	private CheckInOutDao checkInOutDao=new CheckInOutDaoImpl();
	@Override
	public void append(CheckInOut checkInOut) {
		this.checkInOutDao.insert(checkInOut);

	}

	@Override
	public Pages<CheckInOut> list(Integer currPage, CheckInOut checkInOut) {
		// TODO Auto-generated method stub
		int rowCount=this.checkInOutDao.getRowCount(checkInOut);
		List<CheckInOut> list=this.checkInOutDao.select(currPage, checkInOut);
		Pages<CheckInOut> pages=new Pages<CheckInOut>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

	@Override
	public void updateStatus(int id, int status) {
		this.checkInOutDao.updateStatus(id, status);
		
	}

	@Override
	public CheckInOut getById(int id) {
		
		return  this.checkInOutDao.selectById(id);
	}

}
