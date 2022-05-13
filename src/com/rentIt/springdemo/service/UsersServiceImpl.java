package com.rentIt.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rentIt.springdemo.dao.UsersDAO;
import com.rentIt.springdemo.entity.Users;

@Service
public class UsersServiceImpl implements UsersService {

	// need to inject customer dao
	@Autowired
	private UsersDAO usersDAO;
	
	@Override
	@Transactional
	public List<Users> getUsers() {
		return usersDAO.getUsers();
	}

	@Override
	@Transactional
	public void createUsers(Users theUser) {
		usersDAO.createUsers(theUser);
		
	}

	@Override
	@Transactional
	public Users getUser(int theId) {
		return usersDAO.getUser(theId);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		usersDAO.deleteUser(theId);
	}
	
	//
	@Override
	@Transactional
	public boolean validateLogin(String theEmail, String thePassword) {
		return usersDAO.validateLogin(theEmail, thePassword);
	}
}