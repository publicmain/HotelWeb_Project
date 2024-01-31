package com.as.domain;

/**
 * 会员表对应的实体类
 * @author user
 *
 */
public class Member {
	
	private int id;
	private String addtime;
	private String uname;
	private String upwd;
	private String truename;
	private int age;
	private String tel;
	private String sex;
	private String idcard;
	private String email;
	/**
	 * 状态1-正常 2-加锁 3-用户名称或密码不对
	 */
	private int state;
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
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Member() {}
	public Member(int id, String addtime, String uname, String upwd, String truename, int age, String tel, String sex,
			String idcard, String email, int state) {
		super();
		this.id = id;
		this.addtime = addtime;
		this.uname = uname;
		this.upwd = upwd;
		this.truename = truename;
		this.age = age;
		this.tel = tel;
		this.sex = sex;
		this.idcard = idcard;
		this.email = email;
		this.state = state;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", addtime=" + addtime + ", uname=" + uname + ", upwd=" + upwd + ", truename="
				+ truename + ", age=" + age + ", tel=" + tel + ", sex=" + sex + ", idcard=" + idcard + ", email="
				+ email + ", state=" + state + "]";
	}
	
	
	
	

}
