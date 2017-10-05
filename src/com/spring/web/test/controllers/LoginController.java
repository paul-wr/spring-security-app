package com.spring.web.test.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.web.test.dao.User;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping("/createaccount")
	public String createAccount(){
		return "accountcreated";
	}
	
	@RequestMapping("/newaccount")
	public String showNewAccount(Model model){
		
		model.addAttribute("user", new User());
		
		return "newaccount";
	}
	
}
