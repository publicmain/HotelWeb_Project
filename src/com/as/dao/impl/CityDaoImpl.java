package com.as.dao.impl;

import java.util.List;

import com.as.dao.CityDao;
import com.as.domain.City;
import com.as.util.DBUitl;

public class CityDaoImpl implements CityDao {

	@Override
	public List<City> selectByParentId(int parentId) {
		String sql="select * from city where parentid=?";
		
		return DBUitl.executeQuery(City.class, sql, parentId);
	}

}
