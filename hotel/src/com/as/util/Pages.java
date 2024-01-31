package com.as.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页类:通用类
 * @author user
 *
 */
public class Pages<T> {
//	1>first 首页=1
//	2>next 下一页: if(总页数>当前页) {next=当前页+1} else{next=总页数}
//	3>pre 前一页: if(当前页>1) {pre=当前页-1} else {pre=1}
//	4>last 末页=总页数
//	5>currPage当前页
//	6>rowCount 总记录条数
//	7>total总页数=rowCount%pageSize==0?rowCount/pageSize:rowCount/pageSize+1;
//	8>pageSize每页大小
//	9>方法:完成给1,2,3,4,7,10属性赋值：
//	10>List<T> list;存放分页的查询结果
	
	/**
	 * 首页
	 */
	private int first;

	
	/**
	 * 上一页
	 */
	private int pre;
	
	/**
	 * 下一页
	 */
	private int next;
	
	/**
	 * 末页
	 */
	private int last;
	
	/**
	 * 当前页
	 */
	private int currPage;
	
	/**
	 * 总记录条数
	 */
	private int rowCount;
	
	/**
	 * 每页大小
	 */
	private int pageSize;
	
	/**
	 * 总页数
	 */
	private int total;
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * 分页的查询结果
	 */
	private List<T> list;

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

	public int getPre() {
		return pre;
	}

	public void setPre(int pre) {
		this.pre = pre;
	}

	public int getNext() {
		return next;
	}

	public void setNext(int next) {
		this.next = next;
	}

	public int getLast() {
		return last;
	}

	public void setLast(int last) {
		this.last = last;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
	
	public Pages() {}
	
	/**
	 * 构造函数初始化属性
	 * @param currPage 当前页
	 * @param pageSize 每页大小
	 * @param rowCount 记录条数
	 * @param list 查询的分页结果
	 */
	public Pages(int currPage,int pageSize,int rowCount, List<T> list)
	{
		this.cal(currPage, pageSize, rowCount, list);
	}
	
	/**
	 * 初始化属性的方法
	 * @param currPage 当前页
	 * @param pageSize 每页大小
	 * @param rowCount 记录条数
	 * @param list 查询的分页结果
	 */
	public void cal(int currPage,int pageSize,int rowCount, List<T> list)
	{
		//当前页
		this.currPage=currPage;
		//每页大小
		this.pageSize=pageSize;
		//总记录条数
		this.rowCount=rowCount;
		//总页数
		this.total=rowCount%pageSize==0?rowCount/pageSize:rowCount/pageSize+1;
		//分页查询结果
		this.list=list;
		//首页
		this.first=1;
		//上一页
		this.pre=currPage>1?currPage-1:1;
		//下一页
		this.next=this.total>currPage?currPage+1:this.total;
		//末页
		this.last=this.total;
	}
	

}
