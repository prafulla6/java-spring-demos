package com.ciss.cms.dao;

import com.ciss.cms.model.UserBean;

public interface UserDao 
{
	
	public abstract UserBean validateLogin(UserBean userBean);
}
