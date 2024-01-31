package com.as.domain;

public class RoomType {
	private Integer id;
	private String addtime;
	private Integer hotelid;
	private String roomtypename;
	private Integer bedsnumber;
	private Integer dayprice;
	private Integer hourprice;
	private Integer depositmoney;
	private String picture;
	private Integer total;
	private String note;
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
	public String getRoomtypename() {
		return roomtypename;
	}
	public void setRoomtypename(String roomtypename) {
		this.roomtypename = roomtypename;
	}
	public Integer getBedsnumber() {
		return bedsnumber;
	}
	public void setBedsnumber(Integer bedsnumber) {
		this.bedsnumber = bedsnumber;
	}
	public Integer getDayprice() {
		return dayprice;
	}
	public void setDayprice(Integer dayprice) {
		this.dayprice = dayprice;
	}
	public Integer getHourprice() {
		return hourprice;
	}
	public void setHourprice(Integer hourprice) {
		this.hourprice = hourprice;
	}
	public Integer getDepositmoney() {
		return depositmoney;
	}
	public void setDepositmoney(Integer depositmoney) {
		this.depositmoney = depositmoney;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public RoomType() {}
	public RoomType(Integer id, String addtime, Integer hotelid, String roomtypename, Integer bedsnumber,
			Integer dayprice, Integer hourprice, Integer depositmoney, String picture, Integer total, String note) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.hotelid = hotelid;
		this.roomtypename = roomtypename;
		this.bedsnumber = bedsnumber;
		this.dayprice = dayprice;
		this.hourprice = hourprice;
		this.depositmoney = depositmoney;
		this.picture = picture;
		this.total = total;
		this.note = note;
	}
	

	@Override
	public String toString() {
		return "RoomType [id=" + id + ", addtime=" + addtime + ", hotelid=" + hotelid + ", roomtypename=" + roomtypename
				+ ", bedsnumber=" + bedsnumber + ", dayprice=" + dayprice + ", hourprice=" + hourprice
				+ ", depositmoney=" + depositmoney + ", picture=" + picture + ", total=" + total + ", note=" + note
				+ "]";
	}
	
	

}
