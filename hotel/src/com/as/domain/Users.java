package com.as.domain;

import com.as.myannotation.TableField;

/**
 * 用户类
 * 这种类: 实体类
 * 类的名称与表的名称相同,属性名称与表的字段名称相同.
 * 
 * 实体的对象相当于表中一条记录
 * @author user
 *
 */
public class Users {
	/**
	 * 表中没有这个属性名对应的字段名
	 * orm映射时会找不到对应的字段
	 * 
	 * 解决方法:最简单的是使用自定义注解
	 */
	@TableField
	private String birthday;
	
	private int id;
	private String addtime;
	private String uname;
	private String upwd;
	private String hotelid;
	/**
	 * 1-正常 2-加锁 3-帐号或密码不对
	 */
	private int state;
	
	private  String prompt;
	private String answer;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getHotelid() {
		return hotelid;
	}
	public void setHotelid(String hotelid) {
		this.hotelid = hotelid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Users() {}
	public Users(int id, String addtime, String uname, String upwd, String hotelid, int state, String prompt,
			String answer) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.uname = uname;
		this.upwd = upwd;
		this.hotelid = hotelid;
		this.state = state;
		this.prompt = prompt;
		this.answer = answer;
	}
	
	
	public Users( String uname, String upwd, String hotelid, int state, String prompt,
			String answer) {

		this.uname = uname;
		this.upwd = upwd;
		this.hotelid = hotelid;
		this.state = state;
		this.prompt = prompt;
		this.answer = answer;
	}
//	@Override
//	public String toString() {
//		return "Users [id=" + id + ", addtime=" + addtime + ", uname=" + uname + ", upwd=" + upwd + ", hotelid="
//				+ hotelid + ", state=" + state + ", prompt=" + prompt + ", answer=" + answer + "]";
//	}
	
	
	
	

}
