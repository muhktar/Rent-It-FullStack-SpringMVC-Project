package com.rentIt.springdemo.service;

import java.util.List;

import com.rentIt.springdemo.entity.Users;

public interface UsersService {

	public List<Users> getUsers();
	
	public void createUsers(Users theUser);
	
	public Users getUser(int theId);
	
	public void deleteUser(int theId);
	
	//
	public boolean validateLogin(String theEmail, String thePassword);
}