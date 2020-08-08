package com.ciss.cms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import com.ciss.cms.model.UserBean;

@Repository
public class UserDaoImpl implements UserDao
{
	@Autowired
	private DriverManagerDataSource dataSource;

	/*===========================================================================================================
	======================================validate user credential===============================================*/
	@Override
	public UserBean validateLogin(UserBean userBean) {
		UserBean userDetails=new UserBean();
		Connection con=null;
		ResultSet rs=null;
		boolean result=false;
		try
		{
			con=dataSource.getConnection();
			Statement st=con.createStatement();
			String sql="select * from login where username='"+userBean.getUsername()+"' and password='"+userBean.getPassword()+"'";
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				userDetails.setId(Integer.parseInt(rs.getString(1)));
				userDetails.setUsername((rs.getString(2)));
				userDetails.setPassword(rs.getString(3));
				result=true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return userDetails;
	}
	
}
