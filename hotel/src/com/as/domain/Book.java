package com.as.domain;

/**
 * 预约实体类
 * @author user
 *
 */
public class Book {

	private Integer id;
	private String addtime;
	private Integer hotelid;
	private Integer memberid;
	private Integer personcount;
	private Integer roomcount;
	private Integer daycount;
	private String begintime;
	private String endtime;
	private Integer roomtypeid;
	private Integer money;
	private Integer status;
	private Integer roomid;


	/**
	 * 酒店名称
	 */
	private String name;
	
	/**
	 * 房间类型名称
	 */
	private String roomtypename;
	
	/**
	 * 图片
	 */
	private String picture;
	
	/**
	 * 会员名称
	 */
	private String uname;
	
	/**
	 * 每天价格
	 */
	private Integer dayprice;
	
	/**
	 * 会员的电话
	 */
	private String tel;
	
	private String idcard;
	
	
	
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public Integer getPersoncount() {
		return personcount;
	}
	public void setPersoncount(Integer personcount) {
		this.personcount = personcount;
	}
	public Integer getRoomcount() {
		return roomcount;
	}
	public void setRoomcount(Integer roomcount) {
		this.roomcount = roomcount;
	}
	public Integer getDaycount() {
		return daycount;
	}
	public void setDaycount(Integer daycount) {
		this.daycount = daycount;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public Integer getRoomtypeid() {
		return roomtypeid;
	}
	public void setRoomtypeid(Integer roomtypeid) {
		this.roomtypeid = roomtypeid;
	}
	public Integer getMoney() {
		return money;
	}
	public void setMoney(Integer money) {
		this.money = money;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	
	
	
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Integer getDayprice() {
		return dayprice;
	}
	public void setDayprice(Integer dayprice) {
		this.dayprice = dayprice;
	}
	public Book() {}
	public Book(Integer id, String addtime, Integer hotelid, Integer memberid, Integer personcount, Integer roomcount,
			Integer daycount, String begintime, String endtime, Integer roomtypeid, Integer money, Integer status,
			Integer roomid) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.hotelid = hotelid;
		this.memberid = memberid;
		this.personcount = personcount;
		this.roomcount = roomcount;
		this.daycount = daycount;
		this.begintime = begintime;
		this.endtime = endtime;
		this.roomtypeid = roomtypeid;
		this.money = money;
		this.status = status;
		this.roomid = roomid;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", addtime=" + addtime + ", hotelid=" + hotelid + ", memberid=" + memberid
				+ ", personcount=" + personcount + ", roomcount=" + roomcount + ", daycount=" + daycount
				+ ", begintime=" + begintime + ", endtime=" + endtime + ", roomtypeid=" + roomtypeid + ", money="
				+ money + ", status=" + status + ", roomid=" + roomid + ", name=" + name + ", roomtypename="
				+ roomtypename + ", picture=" + picture + ", uname=" + uname + ", dayprice=" + dayprice + ", tel=" + tel
				+ ", idcard=" + idcard + "]";
	}

	
	
	

}
