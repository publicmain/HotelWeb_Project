package com.as.domain;

public class CheckInOut {

	private Integer id;
	private String addtime;
	private String intime;
	private String outtime;
	private Integer memberid;
	private String name;
	private String sex;
	private String tel;
	private String idcard;
	private Integer roomid;
	private Integer userid;
	private Integer pay;
	private Integer status;
	
	/**
	 * 房间电话
	 */
	private String roomtel;
	
	/**
	 * 房间类型名称
	 */
	private String roomtypename;
	
	/**
	 * 每天价格
	 */
	private String dayprice;
	
	/**
	 * 会员名称
	 */
	private String uname;
	
	private String truename;
	private String roomnum;
	
	/**
	 * 操作员名称
	 */
	private String opname;
	
	public String getOpname() {
		return opname;
	}
	public void setOpname(String opname) {
		this.opname = opname;
	}
	public String getRoomtel() {
		return roomtel;
	}
	public void setRoomtel(String roomtel) {
		this.roomtel = roomtel;
	}
	public String getRoomtypename() {
		return roomtypename;
	}
	public void setRoomtypename(String roomtypename) {
		this.roomtypename = roomtypename;
	}
	public String getDayprice() {
		return dayprice;
	}
	public void setDayprice(String dayprice) {
		this.dayprice = dayprice;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(String roomnum) {
		this.roomnum = roomnum;
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
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public String getOuttime() {
		return outtime;
	}
	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getPay() {
		return pay;
	}
	public void setPay(Integer pay) {
		this.pay = pay;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public CheckInOut() {}
	public CheckInOut(Integer id, String addtime, String intime, String outtime, Integer memberid, String name,
			String sex, String tel, String idcard, Integer roomid, Integer userid, Integer pay, Integer status) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.intime = intime;
		this.outtime = outtime;
		this.memberid = memberid;
		this.name = name;
		this.sex = sex;
		this.tel = tel;
		this.idcard = idcard;
		this.roomid = roomid;
		this.userid = userid;
		this.pay = pay;
		this.status = status;
	}
	@Override
	public String toString() {
		return "CheckInOut [id=" + id + ", addtime=" + addtime + ", intime=" + intime + ", outtime=" + outtime
				+ ", memberid=" + memberid + ", name=" + name + ", sex=" + sex + ", tel=" + tel + ", idcard=" + idcard
				+ ", roomid=" + roomid + ", userid=" + userid + ", pay=" + pay + ", status=" + status + ", roomtel="
				+ roomtel + ", roomtypename=" + roomtypename + ", dayprice=" + dayprice + ", uname=" + uname + "]";
	}
	
	
	
	
	
	

}
