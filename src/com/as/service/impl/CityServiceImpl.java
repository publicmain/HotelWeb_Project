package com.as.service.impl;

import java.util.List;

import com.as.dao.CityDao;
import com.as.dao.impl.CityDaoImpl;
import com.as.domain.City;
import com.as.service.CityService;

public class CityServiceImpl  implements CityService{

	private CityDao cityDao=new CityDaoImpl(); 
	@Override
	public List<City> selectByParentId(int parentId) {
		// TODO Auto-generated method stub
		return this.cityDao.selectByParentId(parentId);
	}

}
