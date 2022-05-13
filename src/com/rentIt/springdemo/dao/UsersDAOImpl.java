package com.rentIt.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rentIt.springdemo.entity.Customer;
import com.rentIt.springdemo.entity.Users;

@Repository
public class UsersDAOImpl implements UsersDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	@Transactional
	public List<Users> getUsers() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<Users> theQuery = 
				currentSession.createQuery("from Users", Users.class);
		
		// execute query and get result list
		List<Users> users = theQuery.getResultList();
				
		// return the results		
		return users;
	}

	@Override
	@Transactional
	public void createUsers(Users theUser) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theUser);
		
	}
	
	@Override
	@Transactional
	public Users getUser(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Users theUser = currentSession.get(Users.class, theId);
		
		return theUser;
	}
	
	@Override
	@Transactional
	public void deleteUser(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Users where id=:usersId");
		theQuery.setParameter("usersId", theId);
		
		theQuery.executeUpdate();		
	}
	
	//
	@Override
	@Transactional
	public boolean validateLogin(String theEmail, String thePassword) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
			Query theQuery = 
					currentSession.createQuery("select from Users where email=:usersEmail AND password=:usersPassword  ");
			theQuery.setParameter("usersEmail", theEmail); 
			theQuery.setParameter("usersPassword",  thePassword); 
				
			Users theUser = new Users();
			if(theUser.getEmail()== theEmail && theUser.getPassword() == thePassword){
					return true;
				}
			else {
				return false;
			}
		
	}
}






