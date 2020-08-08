package com.ciss.cms.service;

import org.springframework.stereotype.Service;

import com.ciss.cms.model.UserBean;

@Service
public interface UserService
{
	public abstract UserBean validateLogin(UserBean userBean);
}
