package com.ciss.cms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ciss.cms.dao.UserDao;
import com.ciss.cms.model.UserBean;

@Service
public class UserServiceImpl implements UserService
{

	@Autowired
	UserDao userDao;
	
	@Override
	public UserBean validateLogin(UserBean userBean) {
		UserBean userDetails=userDao.validateLogin(userBean);
		return userDetails;
	}
	
}
