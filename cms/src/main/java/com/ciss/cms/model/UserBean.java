package com.ciss.cms.model;


public class UserBean 
{
	private int id;
	private String username;
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		System.out.println("set id");
		this.id = id;
	}
	public void setUsername(String username) {
		System.out.println("setUsername");
		this.username = username;
	}
	public String getUsername() {
		System.out.println("getUsername");
		return username;	
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
