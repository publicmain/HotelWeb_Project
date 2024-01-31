package com.as.util;

/**
 * 常量类
 * @author user
 *
 */
public interface Common {

	/**
	 * 连接数据库的驱动的字符串
	 */
	public static final String DRIVERURL=ReaderProperties.newInstance().getProperty("driverurl");
	
	/**
	 * 连接数据库的用户名称
	 */
	public String USERNAME=ReaderProperties.newInstance().getProperty("username");
	
	/**
	 * 连接数据库的密
	 */
	public String PASSWORD=ReaderProperties.newInstance().getProperty("password");
	
	/**
	 * 每页大小
	 * 把字符串的数值转成int类型
	 */
	public int PAGESIZE=Integer.parseInt(ReaderProperties.newInstance().getProperty("pagesize"));
	
	/**
	 * 酒店id
	 */
	public int HOTELID=Integer.parseInt(ReaderProperties.newInstance().getProperty("hotelid"));
	
	/**
	 * 酒店名称
	 */
	public String HOTELNAME=ReaderProperties.newInstance().getProperty("hotelname");
	
	
	
	
	
	
	
	
}


