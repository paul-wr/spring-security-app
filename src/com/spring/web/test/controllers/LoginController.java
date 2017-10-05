package com.spring.web.test.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.web.test.dao.Offer;
import com.spring.web.test.dao.User;
import com.spring.web.test.service.UsersService;

@Controller
public class LoginController {
	
	private UsersService usersService;
	
	@Autowired
	public void setUsersService(UsersService usersService){
		this.usersService = usersService;
	}
	
	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	
	@RequestMapping(value = "/createaccount", method=RequestMethod.POST)
	public String createAccount(@Valid User user, BindingResult result){
		
		if(result.hasErrors()){
		
			return "newaccount";
		}
		
		user.setAuthority("user");
		user.setEnabled(true);
		
		usersService.create(user);
		
		
		return "accountcreated";
	}
	
	@RequestMapping("/newaccount")
	public String showNewAccount(Model model){
		
		model.addAttribute("user", new User());
		
		return "newaccount";
	}
	
}
