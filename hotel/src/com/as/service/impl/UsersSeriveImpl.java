package com.as.service.impl;

import java.util.List;

import com.as.dao.UsersDao;
import com.as.dao.impl.UsersDaoImpl;
import com.as.domain.Member;
import com.as.domain.Users;
import com.as.service.UsersService;
import com.as.util.Pages;

/**
 * 用户业务层接口的实现类
 * 业务层调用数据访问层
 * @author user
 *
 */
public class UsersSeriveImpl implements UsersService {

	//用户数据访问层对象
	private UsersDao usersDao=new UsersDaoImpl();
	@Override
	public void append(Users users) {
		this.usersDao.insert(users);
		
	}

	@Override
	public void modifyById(Users users) {
		this.usersDao.updateById(users);
		
	}

	@Override
	public void removeById(int id) {
		this.usersDao.deleteById(id);
		
	}

	@Override
	public Users getById(int id) {
		// TODO Auto-generated method stub
		return this.usersDao.selectById(id);
	}

	@Override
	public List<Users> list() {
		// TODO Auto-generated method stub
		return this.usersDao.select();
	}

	@Override
	public Pages<Users> list(int currPage,Users users) {
		// TODO Auto-generated method stub
		//总记录条数
		int rowCount=this.usersDao.getRowCount(users);
		//分页查询结果
		List<Users> list=this.usersDao.select(currPage,users);
		Pages<Users> pages=new Pages<Users>(currPage, 5, rowCount, list);

		return pages;
	}

	@Override
	public Users login(Users users) {
		// TODO Auto-generated method stub
		// 1-正常 2-加锁 3-帐号或密码不对
		Users users2=this.usersDao.login(users);
		if(users2!=null)
		{
			//判断状态
			if(users2.getState()==1)
			{
				users2.setState(1);
			}
			else
			{
				users2.setState(2);
			}
		}
			
		else
		{
			users2=new Users();
			users2.setState(3);
		}
		return users2;
	}

	@Override
	public Users selectByUname(String uname) {
		// TODO Auto-generated method stub
		return this.usersDao.selectByUname(uname);
	}

	@Override
	public void updateState(int id) {
		// TODO Auto-generated method stub
		this.usersDao.updateState(id);
	}

}
