package com.as.domain;

import com.as.myannotation.TableField;

public class Hotel {

	@TableField(required =false)
	private int xx;
	
	public int getXx() {
		return xx;
	}

	public void setXx(int xx) {
		this.xx = xx;
	}

	//表中没有该字段
	@TableField(required =false )
	private String datetime;
	
	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	private Integer id;
	private String addtime;
	private String name;
	private String tel;
	private String address;
	private String picture;
	private Integer cityid;
	
	/**
	 * 省名
	 */
	private String province;
	
	/**
	 * 城市名
	 */
	private String cityname;

	/**
	 * 省id
	 */
	private int provinceid;
	
	public int getProvinceid() {
		return provinceid;
	}

	public void setProvinceid(int provinceid) {
		this.provinceid = provinceid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Integer getCityid() {
		return cityid;
	}

	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public Hotel() {}
	public Hotel(Integer id, String addtime, String name, String tel, String address, String picture, Integer cityid,
			String province, String cityname) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.picture = picture;
		this.cityid = cityid;
		this.province = province;
		this.cityname = cityname;
	}

	@Override
	public String toString() {
		return "Hotel [id=" + id + ", addtime=" + addtime + ", name=" + name + ", tel=" + tel + ", address=" + address
				+ ", picture=" + picture + ", cityid=" + cityid + ", province=" + province + ", cityname=" + cityname
				+ "]";
	}
	
	
	
	
	
}
