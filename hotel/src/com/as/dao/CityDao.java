package com.as.dao;

import java.util.List;

import com.as.domain.City;

public interface CityDao {

	
	public List<City> selectByParentId(int parentId);
}
