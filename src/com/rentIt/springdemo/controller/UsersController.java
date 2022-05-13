package com.rentIt.springdemo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rentIt.springdemo.dao.UsersDAO;
import com.rentIt.springdemo.entity.Customer;
import com.rentIt.springdemo.entity.Users;
import com.rentIt.springdemo.service.UsersService;

@Controller
@RequestMapping("/rentit")
public class UsersController {

	// need to inject the Users service
	@Autowired
	private UsersService usersService;
	
	@RequestMapping("/list")
	public String listUsers(Model theModel) {
		
		// get customers from the dao
		List<Users> theUsers = usersService.getUsers();
				
		// add the customers to the model
		theModel.addAttribute("users", theUsers);
		
		return "list-users";
	}
	

	@RequestMapping("/createAcc")
	public String createAccount(Model theModel) {
		// create model attribute to bind form data
		Users theUser = new Users();
				
		theModel.addAttribute("users", theUser);
				
		return "RentItCreateAccountPage";	
		
	}
	
	@PostMapping("/createUsers")
	public String createUsers(@ModelAttribute("users") Users theUser) {
		
		// save the user using our dao
		usersService.createUsers(theUser);	
		
		return "redirect:/rentit/list";
	}
	
	@RequestMapping("/updateAcc")
	public String showFormForUpdate(@RequestParam("usersId") int theId,
									Model theModel) {
		
		// get the user from our service
		Users theUser = usersService.getUser(theId);	
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("users", theUser);
		
		// send over to our form		
		return "RentItUpdateAccount";
	}
	
	@RequestMapping("/delete")
	public String deleteCustomer(@RequestParam("usersId") int theId) {
		
		// delete the user
		usersService.deleteUser(theId);
		
		return "redirect:/rentit/list";
	}
	
	@RequestMapping("/landing")
	public String landing(Model theModel) {
		
		return "RentItLandingPage";
	}
	
	@RequestMapping("/addItem")
	public String addItem(Model theModel) {
		
		return "RentItAddItem";
	}
	
	@RequestMapping("/profile")
	public String profile(Model theModel) {
		
		return "/RentItProfile";
		
	}
	
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public String login(Model theModel) {
		System.out.println("Inside login");
		return "RentItLogin";
		
	}
	
	//
	@GetMapping("/vallogin")
	public String validatelogin(@ModelAttribute("usersEmail")String theEmail,
			 @ModelAttribute("usersPassword") String thePassword) {
		
		 usersService.validateLogin(theEmail, thePassword);
		
				
		return "redirect:/rentit/list";
		
	}
	
	 @RequestMapping(value="/", method = RequestMethod.GET)
	    public ModelAndView visitHome() {
	        return new ModelAndView("index");
	    }
	         
	  @RequestMapping(value="/admin", method = RequestMethod.GET)
	    public ModelAndView visitAdmin() {
	        ModelAndView model = new ModelAndView("admin");
	        model.addObject("title", "Admin Welcome Page");
	        model.addObject("message", "Spring security authentication has executed successfully!");
	         
	        return model;
	    }
	 
	 @RequestMapping(value="/logout",method = RequestMethod.GET)
	    public String logout(HttpServletRequest request){
	        HttpSession httpSession = request.getSession();
	        httpSession.invalidate();
	        return "redirect:/rentit/renLog";
	    }
	 
	 @RequestMapping("/renLog")
		public String logOut(Model theModel) {
			
			return "RentItLogOut";
			
		}
	 @RequestMapping("/error")
	    public String error(ModelMap model)
	    {
	        model.addAttribute("error", "true");
	        return "RentItLogin";

	    }

	
}


