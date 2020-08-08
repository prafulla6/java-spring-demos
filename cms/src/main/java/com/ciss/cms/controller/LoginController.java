package com.ciss.cms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ciss.cms.model.UserBean;
import com.ciss.cms.service.UserService;

@Controller
public class LoginController
{

	@Autowired
	private UserService userService;
	
/*=========================================================================================================================
======================================display login page===================================================================*/
//	@RequestMapping("/login")
//	public String showLogin()
//	{
//		return "login";
//	}
/*=========================================================================================================================
======================================display login page===================================================================*/
	
	@RequestMapping("/login")
	public String showLogin()
	{
		return "login";
	}
	
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	
	@RequestMapping("/validateLogin")
	public ModelAndView validateLogin(HttpServletRequest request,UserBean userBean)
	{
		ModelAndView model=new ModelAndView();
		
		if (userBean.getUsername() == null || userBean.getUsername().trim().length()==0 || userBean.getPassword() == null
				|| userBean.getPassword().trim().length()==0) 
		{
			request.setAttribute("message","please enter username and password");
			model.setViewName("login");
		}
		else
		{
			UserBean userDetails=userService.validateLogin(userBean);
			if (userDetails.getId()>0) 
			{
				HttpSession session=request.getSession();
				session.setAttribute("userDetails", userDetails);
				model.setViewName("redirect:/home");
			}
			else
			{
				request.setAttribute("message","wrong username or password");
				model.setViewName("login");
			}
		}
		return model;
	}
}
