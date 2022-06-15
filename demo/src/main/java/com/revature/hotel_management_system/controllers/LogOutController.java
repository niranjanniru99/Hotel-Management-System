package com.revature.hotel_management_system.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class LogOutController {

	@PostMapping("/receptionist/logout")
	public ModelAndView logout(){
		ModelAndView mv=new ModelAndView("/");
		return mv;
		
	}
	
  
}
