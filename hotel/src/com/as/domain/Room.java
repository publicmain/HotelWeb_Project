package com.as.domain;

public class Room {

	private Integer id;
	private String addtime;
	private Integer hotelid;
	private String roomnum;
	private Integer roomtypeid;
	private Integer status;
	private String tel;
	private String region;
	private String locknumber;
	
	//c.name,b.roomtypename,b.dayprice,b.picture
	
	/**
	 * 酒店名称
	 */
	private String name;
	
	/**
	 * 房间类型名称
	 */
	private String roomtypename;
	
	/**
	 * 房间类型每天价格
	 */
	private Integer dayprice;
	
	/**
	 * 房间类型图片
	 */
	private String picture;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoomtypename() {
		return roomtypename;
	}
	public void setRoomtypename(String roomtypename) {
		this.roomtypename = roomtypename;
	}
	public Integer getDayprice() {
		return dayprice;
	}
	public void setDayprice(Integer dayprice) {
		this.dayprice = dayprice;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
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
	public Integer getHotelid() {
		return hotelid;
	}
	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}
	public String getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(String roomnum) {
		this.roomnum = roomnum;
	}
	public Integer getRoomtypeid() {
		return roomtypeid;
	}
	public void setRoomtypeid(Integer roomtypeid) {
		this.roomtypeid = roomtypeid;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getLocknumber() {
		return locknumber;
	}
	public void setLocknumber(String locknumber) {
		this.locknumber = locknumber;
	}
	public Room() {}
	public Room(Integer id, String addtime, Integer hotelid, String roomnum, Integer roomtypeid, Integer status,
			String tel, String region, String locknumber) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.hotelid = hotelid;
		this.roomnum = roomnum;
		this.roomtypeid = roomtypeid;
		this.status = status;
		this.tel = tel;
		this.region = region;
		this.locknumber = locknumber;
	}
	@Override
	public String toString() {
		return "Room [id=" + id + ", addtime=" + addtime + ", hotelid=" + hotelid + ", roomnum=" + roomnum
				+ ", roomtypeid=" + roomtypeid + ", status=" + status + ", tel=" + tel + ", region=" + region
				+ ", locknumber=" + locknumber + ", name=" + name + ", roomtypename=" + roomtypename + ", dayprice="
				+ dayprice + ", picture=" + picture + "]";
	}
	
	
	

}
