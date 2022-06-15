package com.revature.hotel_management_system.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.revature.hotel_management_system.services.CustomerService;

@RestController
public class CustomersController {

	@Autowired
	CustomerService customerService;
	
	@GetMapping("/admin/showAllCustomers")
	public ModelAndView showAllCustomers() {
		
		ModelAndView mv=new ModelAndView("/admin/showAllCustomers.jsp");
		mv.addObject("allCustomers",customerService.showAllCustomers());
		return mv;
		
	}
	
}
