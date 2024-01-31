package com.as.service.impl;

import java.util.List;

import com.as.dao.BookDao;
import com.as.dao.impl.BookDaoImpl;
/**
 * 预约业务层接口的实现类
 */
import com.as.domain.Book;
import com.as.service.BookService;
import com.as.util.Common;
import com.as.util.Pages;

public class BookServiceImpl implements BookService {
	private BookDao bookDao=new BookDaoImpl();

	@Override
	public void append(Book book) {
		this.bookDao.insert(book);

	}

	@Override
	public void removeById(int id) {
		this.bookDao.deleteByid(id);

	}

	@Override
	public Book getById(int id) {
		
		return this.bookDao.selectById(id);
	}

	@Override
	public Pages<Book> list(int currPage, Book book) {
		
		int rowCount=this.bookDao.getRowCount(book);
		List<Book> list=this.bookDao.select(currPage, book);
		Pages<Book> pages=new Pages<Book>(currPage, Common.PAGESIZE, rowCount, list);
		return pages;
	}

	@Override
	public void updateStatus(int id, int status) {
		this.bookDao.updateStatud(id, status);
	}

	@Override
	public void updateRoomId(int id, int roomId) {
		// TODO Auto-generated method stub
		this.bookDao.updateRoomId(id, roomId);
		
	}

}
