package com.as.util;

import java.io.IOException;
import java.io.InputStream;
//类:jdk,读取属性文件
import java.util.Properties;

/**
 * 读取属性文件类
 * 使用单例设计模式实现读取属性文件
 * @author user
 *
 */
public class ReaderProperties extends Properties {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//1>本类静态的私有的属性
	private static ReaderProperties readerProperties;
	//2>私有构造函数:外界不能通过new创建对象
	private ReaderProperties() {
		//读取属性文件
		InputStream is=this.getClass().getResourceAsStream("/db.properties");
		try {
			//加载属性文件
			this.load(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//3>
	public static ReaderProperties newInstance()
	{
		if(readerProperties==null)
		{
			readerProperties=new ReaderProperties();
		}
		return readerProperties;
	}

}
