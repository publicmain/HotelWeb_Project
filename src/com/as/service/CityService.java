package com.as.service;

import java.util.List;

import com.as.domain.City;

public interface CityService {

	public List<City> selectByParentId(int parentId);
}
